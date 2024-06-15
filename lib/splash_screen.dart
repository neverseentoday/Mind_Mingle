import 'dart:async';

import 'package:flutter/material.dart';

import 'package:mind_mingle/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});



  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.yellow,



        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset('assets/images/app_logo.png'),
            Container(height: 35,),
            const Text('Unleashing Knowledge, Building Communities!',style: TextStyle(fontFamily: 'AppFont')

            )],
        ),

      ),
    );
  }


}
