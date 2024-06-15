import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mind_mingle/Comps/Uihelper.dart';

class ForgotPasswordPage extends StatefulWidget {
   const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  TextEditingController emailController=TextEditingController();
  forgotpassword(String email)async{
   if (email==""){
     return Uihelper.CustomAlertBox(context, "Enter Email to reset password");
   }
   else{
     FirebaseAuth.instance.sendPasswordResetEmail(email: email);
   }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password',style: TextStyle(color:Colors.white,fontSize: 19,fontFamily: 'AppFont',fontWeight: FontWeight.w500),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/app_logo.png'),
          const SizedBox(height: 30,),
          const Padding(
            padding: EdgeInsets.only(left: 10.0,right: 10.0),
            child: Text('A E-mail will be sent to reset the password',style: TextStyle(color: Colors.black,fontSize: 14,fontFamily: 'AppFont',fontWeight: FontWeight.w700),),
          ),
          const SizedBox(height: 30,),
          Uihelper.CustomTextField(emailController, "Email", Icons.mail, false),
          const SizedBox(height: 30,),
          Uihelper.CustomButton(() {
            forgotpassword(emailController.text.toString());
          }, 'Reset Password')

        ],
      ),
    );
  }
}
