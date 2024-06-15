import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mind_mingle/home_page.dart';
import 'package:mind_mingle/main.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  static String uName='Rahul';

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 1),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>home_page()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              //height: double.infinity,
              color: Colors.white,
            ),
            const Text("Welcome,User",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),)
          ],
        ),
      )
    );
  }
}
