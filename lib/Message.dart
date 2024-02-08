
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CurrentUser {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String?> getCurrentUserId() async {
    // Get the current user's ID from Firebase Authentication
    User? user = _auth.currentUser;
    if (user != null) {
      return user.uid;
    } else {
      return null; // User is not authenticated
    }
  }

  Future<String?> getCurrentUserUsername() async {
    try {
      // Get the current user's ID
      String? userId = await getCurrentUserId();
      if (userId != null) {
        // Query Firestore to get the user document by user ID
        DocumentSnapshot userSnapshot =
        await _firestore.collection('users').doc(userId).get();

        // Get the username from the user document
        return userSnapshot['username'] as String?;
      } else {
        return null; // User is not authenticated
      }
    } catch (e) {
      print('Error getting current user username: $e');
      return null;
    }
  }
}

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<MessagePage> {
  final TextEditingController _textController = TextEditingController();
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final CurrentUser _currentUser = CurrentUser(); // Instantiate CurrentUser

  void _sendMessage(String messageText, String senderId) async {
    String? currentUsername = await _currentUser.getCurrentUserUsername(); // Get current username
    if (currentUsername != null) {
      await firestore.collection('messages').add({
        'text': messageText,
        'senderId': currentUsername, // Save current username as senderId
        'timestamp': DateTime.now(),
      });
    }
  }

  Stream<QuerySnapshot> _getMessages() {
    return firestore.collection('messages').orderBy('timestamp').snapshots();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Global Chat'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: _getMessages(),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator()); // Loading indicator
                }

                return ListView(
                  children: snapshot.data!.docs.map((DocumentSnapshot document) {
                    Map<String, dynamic> data = document.data() as Map<String, dynamic>;
                    return ListTile(
                      title: Text(data['text']),
                      subtitle: Text(data['senderId']),
                    );
                  }).toList(),
                );
              },
            ),
          ),
          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Colors.blue),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: _textController,
                onSubmitted: (String text) {
                  _sendMessage(text,'');
                  _textController.clear();
                },
                decoration: InputDecoration.collapsed(hintText: 'Send a message'),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                _sendMessage(_textController.text, '');
                _textController.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
