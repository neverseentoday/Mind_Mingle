import 'package:flutter/material.dart';
import 'package:mind_mingle/main.dart';
class myTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final iconData;

  const myTextField({super.key,
  required this.controller,
  required this.hintText,
  required this.obscureText,
  required this.iconData
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder:const OutlineInputBorder(borderSide: BorderSide(color: Colors.white),),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          suffixIcon: Icon(iconData),
          fillColor: Colors.grey.shade200,
          filled:true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[470])
        ),
      ),
    );

  }
}
