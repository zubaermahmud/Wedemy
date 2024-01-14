import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wedemy/constants/colors.dart';
import 'package:wedemy/constants/Theme.dart';

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
              Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).colorScheme.primary,
                height: 300,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image(image: AssetImage('images/dashboard.png')),
                              Text(
                                "E-book",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .background),
                              ),
                              Icon(
                                Icons.account_circle,
                                size: 45,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Hello.students.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text("Welcome to the domain of knowledge")
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Theme.of(context).colorScheme.background,
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 20,),
                                Icon(
                                  Icons.search_off,


                                ),
                                Expanded(

                                  child: TextField(

                                    decoration: InputDecoration(
                                      hintText: 'search',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                      )
                                    ),

                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
              Text("4 very good"),
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
