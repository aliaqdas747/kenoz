import 'package:flutter/material.dart';
import 'package:kenoz/main_screen/HomeScreen.dart';
import 'package:kenoz/utils/CustomElevatedButton.dart';
import 'package:kenoz/utils/Custom_roundedBox.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isChecked = true;
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
                    SizedBox(height: 50,),
                    Image.asset('assets/logo/applogo.png',height: 80,),
                    SizedBox(height: 80,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Mobile number or Email Address'),
                        ],
                      ),
                    ),
                    CustomRoundedBox(),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Password'),
                        ],
                      ),
                    ),
                    CustomRoundedBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? newValue) {
                
                            },
                          ),
                        Text('Remind me')
                        ],),
                        Text('forgget password?')
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(title: 'Send Code', onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Homescreen()));
                    }),
                  
                  ],
                ),
                SizedBox(height: 100,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("don't have an account?",style: TextStyle(fontSize: 18),),
                    Text("Sign Up",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
