import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:login/Intropage.dart';

class logo extends StatefulWidget {  @override
  State<logo> createState() => _logoState();
}

class _logoState extends State<logo> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>intropage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
  return  Scaffold(
    body: Container(
      color: Colors.black,
      child: Center(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.lightBlue,fontSize: 21),
              children: <TextSpan>[
                TextSpan(text: "Eminence ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 31,color: Colors.deepPurple)),
                TextSpan(text: "Tech"),
              ],
            ),
          ),
      ),
    ),
  );
  }}
