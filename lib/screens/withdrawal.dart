// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plimarks_app/utils/styles.dart';

class Withdrawal extends StatefulWidget {
  const Withdrawal({Key? key}) : super(key: key);

  @override
  State<Withdrawal> createState() => _WithdrawalState();
}

class _WithdrawalState extends State<Withdrawal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Withdrawal'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total amount of Sales', style: text18.copyWith(color: Colors.black),),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                enabled: false,
                decoration: InputDecoration(hintText: '0.00', hintStyle: text18.copyWith(color: Colors.black),),
              ),
              SizedBox(height: 12,),
              forms('Bank Name'),
              SizedBox(height: 12,),
              forms('Account Name'),
              SizedBox(height: 12,),
              forms('Account Number'),
              SizedBox(height: 12,),
              forms('Withdrawal Amount'),
            ],
          ),
        ),
      ),
    );
  }

  Column forms(title) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('$title', style: text17b.copyWith(color: Colors.black45),),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: '$title', hintStyle: text15.copyWith(color: Colors.black26)),
                ),
              ],
            );
  }
}
