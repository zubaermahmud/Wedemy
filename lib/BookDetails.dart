
import 'package:flutter/material.dart';
import 'package:wedemy/bookactbtn.dart';
import 'package:wedemy/bookmodel.dart';

class BookDetails extends StatelessWidget {
  final BookModel book;


  const BookDetails({
    required this.book,
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final String coverUrl;
    final String title;
    final String author;
    final String description;
    final String rating;
    final int pages;
    final String langugae;
    final String audioLen;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text('WeDemy'),
          backgroundColor: Colors.blue[800],
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(

                color: Colors.blue,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          Image.asset(
                            book.coverUrl!,
                            width: 150,
                          ),
                          SizedBox(height: 10), // Added SizedBox for spacing
                          Text(
                            book.title!,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(book.author!,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                          SizedBox(height: 30,),
                          Text(book.description!,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Column(
                                  children: [
                                    Text("Rating",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    Text(book.rating!,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Page",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    Text('${book.pages.toString()}',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Language",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    Text(book.language!,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Audio",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    Text(book.audioLen!,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                  ],
                                )
                              ],


                            ),

                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("About  the book",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min to allow the text to wrap
                  children: [
                    Text(
                      book.description!,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min to allow the text to wrap
                  children: [
                    Text(
                        book.description!,
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min, // Set mainAxisSize to min to allow the text to wrap
                  children: [
                    Text(
                        book.description!,
                    ),
                  ],
                ),
              ),
              BookActionBtn(),
            ],
          ),
        ),
      ),
    );
  }
}
