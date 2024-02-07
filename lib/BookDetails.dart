import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WeDemy'),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,

        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 500,
            color:Colors.blue,
            child: Row(
              children: [
                Expanded(
                    child: Column(
                      children: [
                        Text("data"),
                      ],
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
