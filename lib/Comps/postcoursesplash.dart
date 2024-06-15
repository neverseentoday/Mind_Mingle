import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mind_mingle/main.dart';
import 'package:mind_mingle/Coursepage.dart';
class CourseSplashscreen extends StatefulWidget {
  const CourseSplashscreen({super.key});

  @override
  State<CourseSplashscreen> createState() => _CourseSplashscreenState();
}

class _CourseSplashscreenState extends State<CourseSplashscreen> {
  static String uName='Rahul';

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const CoursePage()));
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
              const Text("Course Posted",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),)
            ],
          ),
        )
    );
  }
}
