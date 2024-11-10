import 'package:flutter/material.dart';
import 'package:kenoz/auth/loginScreen.dart';
import 'package:kenoz/auth/signup_screen.dart';
import 'package:kenoz/utils/CustomElevatedButton.dart';
import 'package:kenoz/utils/CustomOutlinedBtn.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/introBG.png'),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1), // Shadow color
                    spreadRadius: 2, // Spread radius
                    blurRadius: 10, // Blur radius
                    offset: Offset(0, 3), // Changes the position of the shadow
                  ),
                ],
              ),
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Welcome to Konooze',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Shopping store without limits.',
                      style: Theme.of(context).textTheme.titleMedium!.apply(color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: CustomButton(title: 'Sign Up', onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupScreen()));

                   },),
                 ),
                    Customoutlinedbtn(title: 'Sign In', onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Loginscreen()));
                    })
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

