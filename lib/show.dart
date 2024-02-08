import 'package:flutter/material.dart';
import 'package:wedemy/Calender.dart';
import 'package:wedemy/bookstore.dart';
import 'package:wedemy/Calculator.dart';
import 'Message.dart';
import 'package:wedemy/study corner.dart';
import 'package:wedemy/to do list.dart';
import 'package:wedemy/login.dart';
import 'package:wedemy/Calculator.dart';
import 'package:wedemy/profile.dart';

class show extends StatelessWidget {
  const show({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WeDemy'),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 12.0, left: 12.0, right: 12.0, bottom: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.blue,
                    size: 40,
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.account_circle,
                          size: 45,
                        ),
                        color: Colors.blue,
                        onPressed: () {
                          _showPopupMenu(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 12.0, left: 12.0, right: 12.0, bottom: 8.0),
              child: Text(
                "DashBoard options",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Center(
                child: Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyCalendar(),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 120,
                        width: 160,
                        child: Card(
                          color: Colors.blue[100],
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      'images/img_3.png',
                                      width: 80,
                                      height: 60,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Calendar",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => bookstore(),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 120,
                        width: 160,
                        child: Card(
                          color: Colors.blue[100],
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      'images/img_4.png',
                                      width: 80,
                                      height: 60,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "E-Book Store",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CGPACalculator(),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 120,
                        width: 160,
                        child: Card(
                          color: Colors.blue[100],
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      'images/img_5.png',
                                      width: 80,
                                      height: 60,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Calculator",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => todolist(),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 120,
                        width: 160,
                        child: Card(
                          color: Colors.blue[100],
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      'images/img_6.png',
                                      width: 140,
                                      height: 50,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "To do list",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MessagePage(),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 120,
                        width: MediaQuery.of(context).size.width - 68,
                        child: Card(
                          color: Colors.blue[100],
                          elevation: 2.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      'images/img_7.png',
                                      width: 140,
                                      height: 50,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Study Corner",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPopupMenu(BuildContext context) async {
    final result = await showMenu(
      context: context,
      position:
          RelativeRect.fromLTRB(50, 100, 0, 0), // Adjust position accordingly
      items: [
        PopupMenuItem(
          child: const Text('Logout'),
          value: 'logout',
        ),
        PopupMenuItem(
          child: const Text('profile'),
          value: 'profile',
        ),
      ],
      elevation: 8.0,
    );

    if (result == 'logout') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    }
    if (result == 'profile') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ProfilePage(),
        ),
      );
    }

  }
}
