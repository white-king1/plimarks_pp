// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plimarks_app/screens/withdrawal.dart';
import 'package:plimarks_app/utils/lists.dart';
import 'package:plimarks_app/utils/styles.dart';

class SellersDashboard extends StatefulWidget {
  const SellersDashboard({Key? key}) : super(key: key);

  @override
  State<SellersDashboard> createState() => _SellersDashboardState();
}

class _SellersDashboardState extends State<SellersDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mon, Mar, 2023'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Your Dashboard',
                          style: text20.copyWith(fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/sharp.png',
                      height: 80,
                      width: 80,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        top: 15, bottom: 10, left: 15, right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sales',
                                  style: text14.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  r'$1200',
                                  style: text20.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                            // DropdownMenu(
                            //   dropdownMenuEntries: [],
                            // ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        top: 15, bottom: 10, left: 15, right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  maxRadius: 20,
                                  minRadius: 15,
                                  child: Icon(
                                    Icons.money,
                                    size: 25,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Transaction History',
                                  style: text16,
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            blocks('Your Sales', '3'),
                            blocks('Processing', '12'),
                            blocks('Complaints', '4'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    padding: EdgeInsets.only(
                        top: 15, bottom: 10, left: 15, right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  maxRadius: 20,
                                  minRadius: 15,
                                  child: Icon(
                                    Icons.person_outlined,
                                    size: 25,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Profile',
                                  style: text16,
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(child: box2('Update products'),
                            onTap: () {},),
                            GestureDetector(child: box2('Withdrawal'),
                            onTap: () => Get.to(Withdrawal()),)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Card box2(value1) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 40,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.green),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.update, color: Colors.white,),
            SizedBox(
              width: 30,
            ),
            Text(
              '$value1',
              style: text18.copyWith(
                  color: Colors.white, fontWeight: FontWeight.w800),
            )
          ],
        ),
      ),
    );
  }

  Card blocks(title, value) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        height: 90,
        width: 100,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.green),
        child: Column(
          children: [
            Text(
              '$title',
              style: text15.copyWith(
                  color: Colors.white, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '$value',
              style: text18.copyWith(
                  color: Colors.white, fontWeight: FontWeight.w800),
            )
          ],
        ),
      ),
    );
  }
}
