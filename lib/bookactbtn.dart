import 'package:flutter/material.dart';
import 'package:wedemy/BookDetails.dart';

class BookActionBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              // Add your onTap logic for the first button here
            },
            child: Row(
              children: [
                Image.asset("images/book.png"),
                SizedBox(width: 10),
                Text(
                  "BUY BOOK",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.background,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              // Add your onTap logic for the second button here
            },
            child: Row(
              children: [
                Container(
                  width: 3,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset("images/playe.png"),
                SizedBox(width: 10),
                Text(
                  "Add Favorite",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.background,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
