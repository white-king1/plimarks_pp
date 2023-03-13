// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:plimarks_app/auth/login.dart';
import 'package:plimarks_app/auth/signup.dart';
import 'package:plimarks_app/utils/styles.dart';
import 'package:plimarks_app/utils/colors.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
                  children: [
            SizedBox(
              height: 30,
            ),
            Center(child: Image(image: AssetImage('assets/images/welcome.png'))),
            SizedBox(
              height: 35,
            ),
            Text(
                'Get a space to sell your products here',
                style: text18.copyWith(color: AppColors.pitchColor),
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    //please change Dashboard to Register
                    builder: (context) => Login(),
                  ),
                );
              },
              // ignore: sort_child_properties_last
              child: Text(
                "Login",
                style: text14.copyWith(color: Colors.white),
              ),
          
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 170, vertical: 20),
                backgroundColor:
                    Colors.green, //change background color of button
                // onPrimary: Colors.yellow, //change text color of button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    //please change Dashboard to Register
                    builder: (context) => Signup(),
                  ),
                );
              },
              // ignore: sort_child_properties_last
              child: Text('Sign Up',
                style: text14.copyWith(color: Colors.white),
              ),
          
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 157, vertical: 20),
                backgroundColor: Color(0xFFFF9000),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
                  ],
                ),
          )),
    );
  }
}
