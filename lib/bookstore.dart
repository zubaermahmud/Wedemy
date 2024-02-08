import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:wedemy/textfield.dart';
import 'package:wedemy/constants/colors.dart';
import 'package:wedemy/constants/Theme.dart';
import 'package:wedemy/data.dart';
import 'package:wedemy/bookmodel.dart';
import 'package:wedemy/category.dart';
import 'package:wedemy/bookcard.dart';
import 'package:wedemy/booktile.dart';
import 'package:wedemy/BookDetails.dart';
import 'package:get/get.dart';
import 'package:wedemy/multitext.dart';

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
                  icon: Icons.add,
                  text: 'Add ',
                ),
                GButton(
                  icon: Icons.favorite_border,
                  text: 'Like',
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
        return AddBook();

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
                      style:
                          Theme.of(context).textTheme.headlineMedium?.copyWith(
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
                    children: bookData
                        .map(
                          (e) => BookCard(
                            coverUrl: e.coverUrl!,
                            title: e.title!,
                            ontap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BookDetails(book: e),
                                ),
                              );
                            },
                          ),
                        )
                        .toList(),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(height: 30),
                Column(
                  children: [
                    Container(
                      color: Theme.of(context).primaryColor.withOpacity(.2),
                      child: Row(
                        children: [
                          Text(
                            "Your Interests",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Column(
                        children: bookData
                            .map((e) => BookTile(
                                title: e.title!,
                                coverUrl: e.coverUrl!,
                                author: e.author!,
                                price: e.price!,
                                rating: e.rating!,
                                numberofRating: e.numberofRating!,
                                ontap: () {}))
                            .toList()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}class AddBook extends StatelessWidget {
  const AddBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController authorController = TextEditingController();
    TextEditingController totalPagesController = TextEditingController();
    TextEditingController languageController = TextEditingController();
    TextEditingController priceController = TextEditingController();
    TextEditingController audioLengthController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blueGrey,
              height: 400,
              // Add image or image field here
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Book title",
                      icon: Icon(Icons.book),
                    ),
                    controller: titleController,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Author",
                      icon: Icon(Icons.account_circle),
                    ),
                    controller: authorController,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Total page",
                      icon: Icon(Icons.add_chart_sharp),
                    ),
                    controller: totalPagesController,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Language",
                      icon: Icon(Icons.abc_outlined),
                    ),
                    controller: languageController,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Price",
                      icon: Icon(Icons.account_balance_wallet_rounded),
                    ),
                    controller: priceController,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Audio length",
                      icon: Icon(Icons.audiotrack),
                    ),
                    controller: audioLengthController,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    maxLines: null,
                    decoration: InputDecoration(
                      hintText: "Description",
                    ),
                    controller: descriptionController,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: InkWell(
                          onTap: () {
                            // Add functionality to add the book
                            print("Adding book...");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}