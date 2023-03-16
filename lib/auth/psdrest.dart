// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plimarks_app/auth/login.dart';
import 'package:plimarks_app/utils/styles.dart';

class Psdrest extends StatefulWidget {
  const Psdrest({Key? key}) : super(key: key);

  @override
  State<Psdrest> createState() => _PsdrestState();
}

class _PsdrestState extends State<Psdrest> {
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
                  'Reset\nPassword',
                  style: text40,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'A strong Password should contain alphabets, numbers, and symbols. Make sure to keep it safe.',
                  style: text14.copyWith(color: Colors.grey, wordSpacing: 4),
                ),
                SizedBox(
                  height: 35,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'New Password',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 235,
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
                      onPressed: () {
                        Get.to(Login());
                      },
                      child: Text(
                        'Reset password',
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
