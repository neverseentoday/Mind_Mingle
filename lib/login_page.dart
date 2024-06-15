import 'package:flutter/material.dart';
import 'android/main.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Image.asset('assets/images/download.png')
          ],
        ),
      )
    );
  }
}
