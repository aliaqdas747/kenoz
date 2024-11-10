import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.title, required this.onPressed,
  });
  final String title;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,

          ),

          onPressed: onPressed, child: Text(title,style: TextStyle(color: Colors.white,fontSize: 18),)),);
  }
}
