import 'package:flutter/material.dart';
import 'package:kenoz/utils/CustomElevatedButton.dart';
import 'package:kenoz/utils/CustomLoginButton.dart';
import 'package:kenoz/utils/Custom_roundedBox.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Image.asset(
                      'assets/logo/applogo.png',
                      height: 80,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Mobile number or Email Address'),
                        ],
                      ),
                    ),
                    CustomRoundedBox(),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Password'),
                        ],
                      ),
                    ),
                    CustomRoundedBox(),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Re-Enter Password'),
                        ],
                      ),
                    ),
                    CustomRoundedBox(),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(title: 'Sign Up', onPressed: () {}),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Or Join With',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    loginBtn(imagePath: "assets/logo/google.png", onPressed: () {  }, title: 'Google',),
                    loginBtn(imagePath: "assets/logo/facebook.png", onPressed: () {  }, title: 'facebook',),
                    loginBtn(imagePath: "assets/logo/apple.png", onPressed: () {  }, title: 'Apple',),
                  SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "have an account?",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          " sign in",
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.blue),
                        ),
                      ],
                    )
                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

