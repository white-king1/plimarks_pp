// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plimarks_app/auth/login.dart';
import 'package:plimarks_app/auth/psdrest.dart';
import 'package:plimarks_app/utils/styles.dart';
import 'package:get/get.dart';

class Forgotpsd extends StatefulWidget {
  const Forgotpsd({Key? key}) : super(key: key);

  @override
  State<Forgotpsd> createState() => _ForgotpsdState();
}

class _ForgotpsdState extends State<Forgotpsd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Forgot\nPassword',
                  style: text40,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'An email confirmation code will be sent to the email you fill in below. Ensure that it is an email linked to your account during registration.',
                  style: text14.copyWith(color: Colors.grey, wordSpacing: 4),
                ),
                SizedBox(
                  height: 35,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have an account?',
                      style: text17b,
                    ),
                    GestureDetector(
                      onTap: () => Get.to(Login()),
                      child: Text(
                        ' Login',
                        style: text17b.copyWith(color: Color(0xFFFF9000)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 160,
                          vertical: 20,
                        ),
                      ),
                      onPressed: () {
                        Get.to(Psdrest());
                      },
                      child: Text(
                        'Next',
                        style: text20.copyWith(color: Colors.white),
                      ),
                    ),
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
