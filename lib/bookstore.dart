import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bookstore extends StatefulWidget {
  const bookstore({super.key});

  @override
  State<bookstore> createState() => _bookstoreState();
}

class _bookstoreState extends State<bookstore> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WeDemy'),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: _buildPage(_selectedIndex),
      bottomNavigationBar: Container(
        color: Colors.blueAccent,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SafeArea(
            child: GNav(
              backgroundColor: Colors.blueAccent,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.indigoAccent.shade400,
              gap: 5,
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: ' Home',
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: ' Cart',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: ' Favorite',
                ),
                GButton(
                  icon: Icons.add_chart_sharp,
                  text: ' Orders',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return Container(
          child: Column(
            children: [
              Text(
                "1 nice",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        );
      case 1:
        return Container(
          child: Column(
            children: [
              Text("2 good"),
            ],
          ),
        );
      case 2:
        // Add your code for the 'Favorite' tab
        return Container(
          child: Column(
            children: [
              Text("3 nice good"),
            ],
          ),
        );
      case 3:
        // Add your code for the 'Orders' tab
        return Container(
          child: Column(
            children: [
              Text("3 very good"),
            ],
          ),
        );

      default:
        return Container(
          child: Column(
            children: [
              Text(
                "1 nice",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        );
    }
  }
}
