import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mind_mingle/Comps/text_field.dart';
import 'package:mind_mingle/Comps/Uihelper.dart';
import 'package:mind_mingle/Comps/SignUp.dart';
import 'package:mind_mingle/SignUpSplash.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
   TextEditingController userController=TextEditingController();
   //String uName=userController.text.toString();
  signUp(String email,String password)async{
    if(email=="" && password==""){
      Uihelper.CustomAlertBox(context, 'Enter the required fields');
    }
    else{
      UserCredential?usercredential;
      try{
        usercredential=await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password).then((value){
          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const Splashscreen()));
          return null;
        });
      }
      on FirebaseAuthException catch(ex){
        return Uihelper.CustomAlertBox(context, ex.code.toString());
      }
    }
  }
//String uName=userController.text.toString();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up Page',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30,),
            Image.asset('assets/images/app_logo.png'),
            const SizedBox(height: 30,),
            Uihelper.CustomTextField(userController, 'Username', Icons.account_circle, false),
            const SizedBox(height: 30,),
            Uihelper.CustomTextField(emailController, 'Email', Icons.mail, false),
            const SizedBox(height: 30,),
            Uihelper.CustomTextField(passController, 'Password', Icons.lock, true),
            const SizedBox(height: 50),
            Uihelper.CustomButton(() {
              signUp(emailController.text.toString(), passController.text.toString());
            }, 'SignUp')
          ],
        ),
      ),
    );
  }
}
