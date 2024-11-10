import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginBtn extends StatelessWidget {
  const loginBtn({
    super.key, required this.imagePath, required this.onPressed, required this.title,
  });
  final String imagePath;
  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(15)
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath),
            SizedBox(width: 10,),
            Text(title,style: TextStyle(color: Colors.black,fontSize: 18),),

          ],
        ),
      ),

    );
  }
}
