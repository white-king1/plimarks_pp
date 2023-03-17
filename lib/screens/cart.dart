// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, sized_box_for_whitespace, non_constant_identifier_names, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:plimarks_app/utils/lists.dart';
import 'package:plimarks_app/utils/styles.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: Icon(Icons.arrow_back),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Plimarks',
                  textAlign: TextAlign.left,
                  style: text15.copyWith(color: Colors.green),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Shopping Cart',
                  style: text18.copyWith(fontWeight: FontWeight.w500),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: 12,
                ),
                Icon(Icons.person_outlined)
              ],
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // RadioMenuButton(
              //   value: true,
              //   groupValue: false,
              //   onChanged: null,
              //   child: Text('Select all items'),
              // ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Obutton('All'),
                      SizedBox(
                        width: 10,
                      ),
                      Obutton('% off'),
                    ],
                  ),
                  Obutton('With Voucher'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // ListView.builder(
              //   itemCount: prod.length,
              //   itemBuilder: (context, index) {

              //     final items = prod[index];

              //   return
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 15, bottom: 10, right: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // RadioMenuButton(
                      //   value: true,
                      //   groupValue: false,
                      //   onChanged: null,
                      //   child: SizedBox(
                      //     width: 1,
                      //   ),
                      // ),
                      Container(
                        height: 120,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/sbag.png',
                                ),
                                fit: BoxFit.cover)),
                      ),
                      Expanded(
                        child: Container(
                           height: 120,
                          width: 50,
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('data'),
                                Icon(Icons.delete_outline),
                              ],
                            ),
                            
                            subtitle: Column(
                          children: [
                            SizedBox(height: 20,),
                            Container(
                              height: 3,
                              width: 8,
                              child: Text('data'),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(r'$100'),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 15,
                                      minRadius: 5,
                                      backgroundColor: Color.fromARGB(255, 206, 205, 205),
                                      child: Text('-'),
                                    ),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text('1'),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    CircleAvatar(
                                      maxRadius: 15,
                                      minRadius: 5,
                                      backgroundColor: Color.fromARGB(255, 206, 205, 205),
                                      child: Text('+'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // child: Column(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       crossAxisAlignment: CrossAxisAlignment.center,
                //       mainAxisSize: MainAxisSize.max,
                //       children: [
                //         Image(
                //           height: 100,
                //           width: 100,
                //           image: AssetImage('assets/images/pbag.png'),
                //         ),
                //         Column(
                //           children: [
                //             Text('Cat feed', style: text16.copyWith(fontWeight: FontWeight.w500),),
                //             SizedBox(height: 5,),
                //             Text('5 left' + r' $12', style: text16.copyWith(fontWeight: FontWeight.w500),),
                //           ],
                //         )

                //       ],
                //     )
                //   ],
                // )
              ),
              // },
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton Obutton(title) => ElevatedButton(
        onPressed: () {},
        child: Text('$title'),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
}
