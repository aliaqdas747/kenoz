import 'package:flutter/material.dart';

class CustomRoundedBox extends StatelessWidget {
  final String hintText;

  const CustomRoundedBox({Key? key, this.hintText = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0), // Rounded corners
        border: Border.all(
          color: Colors.black, // Border color
          width: 1.0, // Border width
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black54),
        ),
      ),
    );
  }
}
