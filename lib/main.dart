import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mind_mingle/Comps/text_field.dart';
import 'package:mind_mingle/home_page.dart';
import 'package:mind_mingle/splash_screen.dart';
import 'package:mind_mingle/SignUp_page.dart';
import 'package:mind_mingle/Comps/Uihelper.dart';
import 'package:mind_mingle/Comps/SignUp.dart';
import 'package:mind_mingle/forgotpasswordpage.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(apiKey: "AIzaSyDXwSLP2VPn7wsK7mS-GSFXAZ_Wm2zz_gU", appId: '1009111928058:android:311d9d0a2ddd2c15e9cd43', messagingSenderId: '1009111928058', projectId: 'mindmingle-5a89d',storageBucket:'gs://mindmingle-5a89d.appspot.com')
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  login(BuildContext context, String email, String password) async {
    if (email == "" && password == "") {
      return Uihelper.CustomAlertBox(
          context, "Enter Required fields");
    } else {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => home_page()),
        );
      } on FirebaseAuthException catch (ex) {
        return Uihelper.CustomAlertBox(context, ex.code.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              Image.asset(
                'assets/images/download.png',
                width: 600,
                height: 400,
              ),
              const Text(
                'Welcome',
                style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'AppFont',
                    fontWeight: FontWeight.bold),
              ),
              Container(height: 8),
              const Text(
                'Please sign in to continue',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontFamily: 'LightFont',
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
              myTextField(
                controller: usernameController,
                hintText: 'Email',
                obscureText: false,
                iconData: Icons.email,
              ),
              myTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                iconData: Icons.lock,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPasswordPage()));
                    }, child: const Text('Forgot Password?',style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.w600),)),
                    Padding(
                      padding: const EdgeInsets.only(left: 110.0),
                      child: TextButton(
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        onPressed: () {
                          login(
                              context,
                              usernameController.text.toString(),
                              passwordController.text.toString());
                        },
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 2.0, left: 2.0),
                      child: Icon(Icons.arrow_forward_sharp),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5, width: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Dont have an account ?',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'AppFont',
                          fontWeight: FontWeight.w200),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpPage()));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
