import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String iconPath;
  final String btnName;
  const CategoryWidget(
      {super.key, required this.iconPath, required this.btnName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.background),
          child: Row(
            children: [
              Image.asset(iconPath),
              const SizedBox(width: 15),
              Text(btnName),
            ],
          ),
        ),
      ),
    );
  }
}
