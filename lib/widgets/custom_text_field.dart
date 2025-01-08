import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hint;
  final Icon prefixIcon;
  final Icon suffixIcon;
  final String helperText;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.helperText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blue,
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          labelStyle: const TextStyle(color: Colors.yellow),
          hintStyle: const TextStyle(color: Colors.yellow),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          helperText: helperText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
