// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plimarks_app/auth/login.dart';
import 'package:plimarks_app/utils/styles.dart';

class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Create\nNew Account',
                  style: text40,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Water is life. Water is a basic human need. In various lines of life, humans need water.',
                  style: text14.copyWith(color: Colors.grey, wordSpacing: 4),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: text14,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Checkbox(value: false, onChanged: null),
                      ],
                    ),
                    Text.rich(
                      TextSpan(
                          text: 'I agree to the ',
                          style: text17b,
                          children: [
                            TextSpan(
                              text: 'Terms of Service ',
                              style: text17b.copyWith(
                                  color: Color(0xFFFF9000)),
                            ),
                            TextSpan(
                              text: 'and',
                              style: text17b,
                            ),
                            TextSpan(
                              text: '\nPrivacy Policy',
                              style: text17b.copyWith(
                                  color: Color(0xFFFF9000)),
                            ),
                          ],),
                    ),
                  ],
                ),
                SizedBox(height: 90,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Have an account?', style: text17b,),
                    GestureDetector(
                      onTap: () => Get.to(Login()),
                      child: Text(' Login', style: text17b.copyWith(color: Color(0xFFFF9000)),))
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: null,
                      child: Text(
                        'Get started',
                        style: text20,
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