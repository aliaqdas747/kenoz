import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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

class CustomTextField extends StatelessWidget {
  final String hintText;

  const CustomTextField({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0,right: 10),
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5), // Light pink color
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Iconsax.search_normal),

          label: Text(hintText),
          hintStyle: TextStyle(color: Colors.grey.shade700),


          border: InputBorder.none,
        ),
      ),
    );
  }
}
