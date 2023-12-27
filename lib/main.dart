import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const FirstPage(),
        '/bookDetails': (context) => const SecondPage(),
        '/buyNow': (context) => const BuyNow(),
        '/calendar': (context) => const MyCalendar (),
      },
    );
  }
}
class MyCalendar extends StatefulWidget {
  const MyCalendar({super.key});

  @override
  _MyCalendarState createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: const Text('MY Calendar '),
        backgroundColor: Colors.green[800],
        foregroundColor: Colors.white,
      ),
      body: TableCalendar(
        calendarFormat: _calendarFormat,
        focusedDay: _focusedDay,
        firstDay: DateTime(2000),
        lastDay: DateTime(2050),
        selectedDayPredicate: (day) {

          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
            _focusedDay = focusedDay;
          });
        },
        onFormatChanged: (format) {
          setState(() {
            _calendarFormat = format;
          });
        },
        calendarStyle: const CalendarStyle(
          todayDecoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          selectedDecoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class Book {
  String bookName;
  String bookAuthor;
  double price;

  Book({this.bookName = '', this.bookAuthor = '',this.price = 0.0});
}

class _FirstPageState extends State<FirstPage> {
  var bookController = TextEditingController();
  var authorController = TextEditingController();
  var priceController = TextEditingController();
  bool crossVisible = false;
  final formKey = GlobalKey<FormState>();
  List<Book> bookList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List your Book '),
        backgroundColor: Colors.green[800],
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: bookList.map((book) => BookCard(book: book)).toList(),
                ),
              ),
            ),
            SizedBox(
              height: 250,
              child: Form(
                key: formKey,
                child: Column(children: [
                  const Divider(
                    height: 30,
                    color: Colors.black,
                    indent: 5,
                    endIndent: 5,
                    thickness: 0.7,
                  ),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      controller: bookController,
                      onTap: () {
                        setState(() {
                          crossVisible = true;
                        });
                      },
                      onTapOutside: (PointerDownEvent event) {
                        FocusScope.of(context).requestFocus(FocusNode());
                        setState(() {
                          crossVisible = false;
                        });
                      },
                      onFieldSubmitted: (text) {
                        setState(() {
                          crossVisible = false;
                        });
                      },
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please Enter Book Name!';
                        } else {
                          return null;
                        }
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.book),
                        border: const OutlineInputBorder(),
                        label: const Text(
                          'Enter Book Name',
                          style: TextStyle(fontSize: 20),
                        ),
                        suffixIcon: Visibility(
                          visible: crossVisible,
                          child: IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              bookController.clear();
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      controller: authorController,
                      onTap: () {
                        setState(() {
                          crossVisible = true;
                        });
                      },
                      onTapOutside: (PointerDownEvent event) {
                        FocusScope.of(context).requestFocus(FocusNode());
                        setState(() {
                          crossVisible = false;
                        });
                      },
                      onFieldSubmitted: (text) {
                        setState(() {
                          crossVisible = false;
                        });
                      },
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter Author Name!';
                        } else {
                          return null;
                        }
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.person),
                        border: const OutlineInputBorder(),
                        label: const Text(
                          'Enter Author',
                          style: TextStyle(fontSize: 20),
                        ),
                        suffixIcon: Visibility(
                          visible: crossVisible,
                          child: IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              authorController.clear();
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      controller: priceController,
                      onTap: () {
                        setState(() {
                          crossVisible = true;
                        });
                      },
                      onTapOutside: (PointerDownEvent event) {
                        FocusScope.of(context).requestFocus(FocusNode());
                        setState(() {
                          crossVisible = false;
                        });
                      },
                      onFieldSubmitted: (text) {
                        setState(() {
                          crossVisible = false;
                        });
                      },
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please Enter Book price!';
                        } else {
                          return null;
                        }
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        icon: const Icon(Icons.attach_money),
                        border: const OutlineInputBorder(),
                        label: const Text(
                          'Enter Book Price',
                          style: TextStyle(fontSize: 20),
                        ),
                        suffixIcon: Visibility(
                          visible: crossVisible,
                          child: IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              priceController.clear();
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          double bookPrice = double.tryParse(priceController.text) ?? 0.0;

                          setState(() {
                            bookList.insert(
                              0,
                              Book(
                                bookName: bookController.text,
                                bookAuthor: authorController.text,
                                price: bookPrice,
                              ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Column(
                                  children: [
                                    Text('Hello User!!'),
                                    Text('Book Created Successfully !'),
                                  ],
                                ),
                              ),
                            );
                          });
                        }
                      },

                      child: const Text("Submit"),
                    ),
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class SecondPage extends StatefulWidget {

  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Map<String, Book> bookDetails = {};

  @override
  Widget build(BuildContext context) {
    bookDetails =
    ModalRoute.of(context)?.settings.arguments as Map<String, Book>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Details'),
        backgroundColor: Colors.green[800],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Book Name:',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${bookDetails['bookObject']?.bookName}',
              style: const TextStyle(fontSize: 30.0),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Book Author:',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${bookDetails['bookObject']?.bookAuthor}',
              style: const TextStyle(fontSize: 30.0),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    Navigator.pushNamed(context, '/buyNow', arguments: {
                      'bookObject': bookDetails['bookObject'],
                      'price': bookDetails['bookObject']?.price,
                    });
                  },
                  label: const Text('Buy Now!'),
                ),

                const SizedBox(
                  width: 40,
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  label: const Text('Go back!'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BuyNow extends StatefulWidget {

  const BuyNow({super.key});

  @override
  State<BuyNow> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  Map<String, dynamic> bookDetails = {};

  List<String> paymentOptions = ['Bkash', 'Visa', 'Rocket', 'MasterCard'];

  @override
  Widget build(BuildContext context) {
    bookDetails = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    Book? selectedBook = bookDetails['bookObject'];
    double selectedBookPrice = bookDetails['price'] ?? 0.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
        backgroundColor: Colors.green[800],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Book Name:',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '${selectedBook?.bookName}  BDT ${selectedBookPrice.toString()}',
              style: const TextStyle(fontSize: 30.0),
            ),
            const SizedBox(
              height: 40,
            ),
            const Divider(
              height: 30,
              color: Colors.black,
              indent: 5,
              endIndent: 5,
              thickness: 0.7,
            ),
            const Text(
              'Payment Options',
              style: TextStyle(fontSize: 30.0),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: paymentOptions.map((option) {
                  return ElevatedButton(
                    onPressed: () {

                    },
                    child: Text(option),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height:35,


            ),
            ElevatedButton(
              onPressed: () {
                Navigator.popUntil(
                  context,
                      (Route<dynamic> route) => route.settings.name == '/',
                );
              },
              child: const Center(
                child: Text("Home"),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/calendar');
        },
        tooltip: 'Go to Calendar',
        child: const Icon(Icons.calendar_today),
      ),
    );
  }
}


class BookCard extends StatelessWidget {
  final Book book;
  const BookCard({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20.0),
      color: Colors.grey[200],
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              book.bookName,
              style: const TextStyle(fontSize: 20.0),
            ),
            Text(
              book.bookAuthor,
              style: const TextStyle(fontSize: 15.0),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/bookDetails', arguments: {
                    'bookObject': book,
                  });
                },
                child: const Text("Details"))
          ],
        ),
      ),
    );
  }
}
