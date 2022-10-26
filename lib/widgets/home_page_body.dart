// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  HomePageBody({
    super.key,
    required this.title,
    required this.image,
    required this.color,
    required this.onTap,
  });
  String title;
  String image;
  Color color;
  Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(20),
          color: color,
        ),
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            CircleAvatar(
              backgroundColor: const Color(0xffFDF6DA),
              child: Image.asset(image),
            ),
          ],
        ),
      ),
    );
  }
}
