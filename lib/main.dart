// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:plimarks_app/auth/forgotpsd.dart';
import 'package:plimarks_app/auth/login.dart';
import 'package:plimarks_app/intro/onboarding.dart';
import 'package:plimarks_app/intro/splash_screen.dart';
import 'package:plimarks_app/screens/cart.dart';
import 'package:plimarks_app/screens/dashboard.dart';
import 'package:plimarks_app/screens/home.dart';
import 'package:plimarks_app/screens/sellers_dashboard.dart';
import 'package:plimarks_app/screens/withdrawal.dart';
import 'package:plimarks_app/utils/styles.dart';
import 'package:get/get.dart';

void main() {
  runApp(/*const*/ MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  // ignore: prefer_const_literals_to_create_immutables
  MaterialColor mycolor = MaterialColor(0xFFFD9340, <int, Color>
  {
    50: Color(0xFFFD9340),
    100: Color(0xFFFD9340),
    200: Color(0xFFFD9340),
    300: Color(0xFFFD9340),
    400: Color(0xFFFD9340),
    500: Color(0xFFFD9340),
    600: Color(0xFFFD9340),
    700: Color(0xFFFD9340),
    800: Color(0xFFFD9340),
    900: Color(0xFFFD9340),
  },
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PLIMARKS APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.green,
        primaryColor: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 2.5,),
              borderRadius: BorderRadius.circular(25)
              ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFD9340), width: 2.5,),
              borderRadius: BorderRadius.circular(25),
            ),
            focusColor: Color(0xFFFF9000),
            contentPadding: EdgeInsets.symmetric(horizontal: 23, vertical: 27),
            hintStyle: text14.copyWith(color: Colors.grey),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 20,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),

          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 15,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Color.fromARGB(255, 240, 239, 239),
            side: BorderSide.none,
            textStyle: text14.copyWith(color: Colors.blue)
          ),
        ),
      ),
      home: SellersDashboard(),
    );
  }
}

