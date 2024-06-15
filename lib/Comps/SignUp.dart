import 'package:flutter/material.dart';
import 'package:mind_mingle/Comps/Uihelper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mind_mingle/home_page.dart';


signUp(BuildContext context, String email, String password) async {
  if (email == "" && password == "") {
    Uihelper.CustomAlertBox(context, "Enter required field");
  }
  else {
    UserCredential? userCredential;
    try {
      userCredential =
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email, password: password);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => home_page()));
    } on FirebaseAuthException catch (ex) {
      return Uihelper.CustomAlertBox(context, ex.code.toString());
    }
  }
}

