import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Color backgroundColor;
  final String imagePath;

  ItemWidget({required this.backgroundColor, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 50,
      color: backgroundColor,
      child: Center(
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }}