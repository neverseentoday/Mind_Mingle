import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mind_mingle/home_page.dart';
import 'package:mind_mingle/main.dart';
class JobSplash extends StatefulWidget {
  const JobSplash({super.key});

  @override
  State<JobSplash> createState() => _JobSplashscreenState();
}

class _JobSplashscreenState extends State<JobSplash> {
  static String uName='Rahul';

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3),(){
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
              const Text("Applied for the Job!!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),),
              const Text("Resume Submitted!!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),)
            ],
          ),
        )
    );
  }
}
