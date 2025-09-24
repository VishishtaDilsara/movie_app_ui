import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.size,
    required this.emoji,
    required this.categoryName,
  });

  final Size size;
  final String emoji;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size.width * 0.17,
          height: size.width * 0.17,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(child: Text(emoji, style: TextStyle(fontSize: 24))),
        ),
        Text(categoryName),
      ],
    );
  }
}
