import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wedemy/constants/colors.dart';
import 'package:wedemy/constants/Theme.dart';
import 'package:wedemy/data.dart';
import 'package:wedemy/bookmodel.dart';
import 'package:wedemy/category.dart';
import 'package:wedemy/bookcard.dart';

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
      resizeToAvoidBottomInset: false,
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
          padding: const EdgeInsets.all(7.0),
          child: SafeArea(
            child: GNav(
              backgroundColor: Colors.blueAccent,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.indigoAccent.shade400,
              gap: 4,
              tabs: [
                GButton(
                  icon: Icons.home,
                  iconSize: 20,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: 'Cart',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Like',
                ),
                GButton(
                  icon: Icons.add_chart_sharp,
                  text: 'Order',
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
        return HomeWidget();
      case 1:
        return Container(
          child: Column(
            children: [
              Text("2 good"),
            ],
          ),
        );
      case 2:
        return Container(
          child: Column(
            children: [
              Text("3 nice good"),
            ],
          ),
        );
      case 3:
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

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 330,
            color: Theme.of(context).colorScheme.primary,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(image: AssetImage('images/dashboard.png')),
                    Text(
                      "E-book",
                      style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Theme.of(context).colorScheme.background,
                      ),
                    ),
                    Icon(
                      Icons.account_circle,
                      size: 45,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Hello, students.",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Welcome to the domain of knowledge",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.background,
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(
                        Icons.search,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'search',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Topics",
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                    color: Theme.of(context).colorScheme.background,
                  ),
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: categoryData
                        .map(
                          (e) => CategoryWidget(
                        iconPath: e["icon"]!,
                        btnName: e["lebel"]!,
                      ),
                    )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Trending",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: bookData.map(
                          (e) => BookCard(

                            coverUrl: e.coverUrl!,
                            title: e.title!,
                            ontap: (){},
                      ),
                    ).toList(),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Your Interests",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                // Add your widget or logic for displaying user interests here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
