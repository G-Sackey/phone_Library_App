import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  // ignore: prefer_typing_uninitialized_variables
  final bool obscuretext;
  final String hintText;

  const Textfield(
      {super.key,
      this.controller,
      required this.obscuretext,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400)),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[500])),
      ),
    );
  }
}
