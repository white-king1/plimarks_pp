// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plimarks_app/auth/forgotpsd.dart';
import 'package:plimarks_app/auth/signup.dart';
import 'package:plimarks_app/screens/dashboard.dart';
import 'package:plimarks_app/screens/home.dart';
import 'package:plimarks_app/utils/styles.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,\nWelcome Back!',
                  style: text40,
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'We are thrilled to have you back on Plimarks, please provide your login details to start shopping.',
                  style: text14.copyWith(color: Colors.grey, wordSpacing: 4),
                ),
                SizedBox(
                  height: 30,
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
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('or', style: text15,)],
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 130,
                          vertical: 20,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => Home()),
                          ),
                        );
                      },
                      child: Text('Get started', style: text14.copyWith(color: Colors.white),)),
                ),
                SizedBox(
                  height: 90,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?", style: text17b),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => Signup());
                      },
                      child: Text(
                        ' Create Account',
                        style: text17b.copyWith(
                          color: Color.fromARGB(255, 252, 167, 69),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      
                      onPressed: (() {
                        Get.to(() => Forgotpsd());
                      }),
                      child: Text(
                        'Forgot Password?',
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
