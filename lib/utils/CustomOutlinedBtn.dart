import 'package:flutter/material.dart';

class Customoutlinedbtn extends StatelessWidget {
  const Customoutlinedbtn({
    super.key, required this.title, required this.onPressed,
  });
  final String title;
  final VoidCallback onPressed;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),

            borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        width: double.infinity,
        height: 50,
        child: Center(child: Text(title,style: TextStyle(color: Colors.black,fontSize: 18),),),
       ),
    );
  }
}
