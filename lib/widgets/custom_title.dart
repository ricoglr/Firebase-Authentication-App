import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title;

  const CustomTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey[200],
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          title,
          style: const TextStyle(
            backgroundColor: Colors.red,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
