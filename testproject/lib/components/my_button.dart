// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

class my_button extends StatelessWidget {
  Function()? onTap;

  my_button({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            'Sign In',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
