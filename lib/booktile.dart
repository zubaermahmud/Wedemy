import 'package:flutter/material.dart';
import 'package:wedemy/constants/colors.dart';

class BookTile extends StatelessWidget {
  final String title;
  final String coverUrl;
  final String author;
  final int price;
  final String rating;
  final int numberofRating;
  final VoidCallback ontap;

  const BookTile({
    super.key,
    required this.title,
    required this.coverUrl,
    required this.author,
    required this.price,
    required this.rating,
    required this.numberofRating,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( bottom: 30.0,
      ),
      child:InkWell (
        onTap:(){} ,
        child: Container(
          color:Colors.blueGrey[100],
          child: Row(

            children: [
              Container(

                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: Offset(2, 2),
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    coverUrl,
                    width: 120,
                  ),
                ),
              ),
              SizedBox(width: 30),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title
                      ,style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      SizedBox(height: 8,),

                      Text(" by :$author " ,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                      ),

                      Text("price : $price",
                      style: TextStyle(
                        color: Colors.green,
                      ),),

                      SizedBox(height: 8,),

                      Row(
                        children: [
                          Image.asset("images/star.png"),
                          Text(" $numberofRating  rating"),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
