import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mind_mingle/home_page.dart';
import 'package:mind_mingle/main.dart';
class JobSplashscreen extends StatefulWidget {
  const JobSplashscreen({super.key});

  @override
  State<JobSplashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<JobSplashscreen> {
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
              const Text("Job Posted",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400),)
            ],
          ),
        )
    );
  }
}
