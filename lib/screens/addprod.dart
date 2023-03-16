// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plimarks_app/screens/dashboard.dart';
import 'package:plimarks_app/utils/styles.dart';

class Addprod extends StatefulWidget {
  const Addprod({Key? key}) : super(key: key);

  @override
  State<Addprod> createState() => _AddprodState();
}

class _AddprodState extends State<Addprod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Get.to(Dashboard()),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          'Add Products',
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 18, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  'Fill in the Text Fields with the necessary details of the products you wish to add.',
                  style: text17b,
                ),
                SizedBox(
                  height: 20,
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
                    hintText: 'Price',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Quantity',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Price',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  style: text14,
                  decoration: InputDecoration(
                    hintText: 'Description',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 125,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Submit',
                        style: text17b.copyWith(color: Colors.white),
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
