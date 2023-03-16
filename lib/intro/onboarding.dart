// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, library_private_types_in_public_api, duplicate_ignore, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:plimarks_app/auth/login.dart';
import 'package:plimarks_app/auth/signup.dart';
import 'package:plimarks_app/widgets/big_text.dart';
import 'package:plimarks_app/widgets/static/colors.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({ Key? key }) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(child: Image(image: AssetImage('assets/welcome.png'))),
          SizedBox(
            height: 5,
          ),
          Container(
            width: 300,
            child: BigText(
                text: 'Get A space to sell your products here',
                color: AppColors.pitchColor,
                size: 16,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 20),
            child: SizedBox(
              width: 350,
              height: 50,
              // ignore: sort_child_properties_last
              child: ElevatedButton(
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
                child: BigText(
                  text: "Login",
                  fontWeight: FontWeight.bold,
                  size: 14,
                  color: AppColors.pitchColor,
                ),

                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.greenColor, //change background color of button
                  // onPrimary: Colors.yellow, //change text color of button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 10, right: 20),
            child: SizedBox(
              width: 350,
              height: 50,
              // ignore: sort_child_properties_last
              child: ElevatedButton(
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
                child: BigText(
                  text: "Sign Up",
                  fontWeight: FontWeight.bold,
                  size: 14,
                  color: AppColors.greenColor,
                ),

                style: ElevatedButton.styleFrom(
                  primary: AppColors.pitchColor, //change background color of button
                  // onPrimary: Colors.yellow, //change text color of button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      )),
    );
  }
}