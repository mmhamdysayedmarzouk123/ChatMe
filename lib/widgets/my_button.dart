// ignore_for_file: use_key_in_widget_constructors, unused_import

import 'package:chatme_app/widgets/constant.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyButton({required this.color, required this.title, required this.onPressed});

  final Color color;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: MaterialButton(
        color:color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        splashColor: Colors.red.shade900,
        onPressed: onPressed,
        minWidth: 200,
        height: 42,
        child: Text(
          title,
          // ignore: prefer_const_constructors
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
