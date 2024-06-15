import 'dart:developer';
import 'package:mind_mingle/Comps/postcoursesplash.dart';
import 'package:mind_mingle/Comps/postjobqsplash.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mind_mingle/Comps/Uihelper.dart';

class PostCourseQuestions extends StatefulWidget {
  const PostCourseQuestions({super.key});

  @override
  State<PostCourseQuestions> createState() => _PostCourseQuestionsState();
}

class _PostCourseQuestionsState extends State<PostCourseQuestions> {
  TextEditingController coursetitle=TextEditingController();

  TextEditingController duration=TextEditingController();

  TextEditingController cost =TextEditingController();

  TextEditingController category=TextEditingController();
  TextEditingController descr=TextEditingController();


  addData(String title,String dur,String co,String cat,String desc)async{
    if(title==""&&dur==""&&co==""&&cat==""){
      Uihelper.CustomAlertBox(context, 'Enter required fields');
    }
    else{
      FirebaseFirestore.instance.collection("Courses").doc(title).set({
        "Course title":title,
        "Duration":dur,
        "Cost":co,
        "Category of course":cat,
        "Course Description":desc,

      }).then((value)=> log('Data Inserted'));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course Page',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 14.0, right: 11.0),
                  child: Text(
                    'MindMingle', style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w600,),),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30.0, right: 140.0),
              child: Text(' Title of the course  posted', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),),
            ),
            Uihelper.CustomTextBox(coursetitle, "Text..", false),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 120.0),
              child: Container(
                  margin: const EdgeInsets.only(left: 1.0),
                  //color: Colors.blue,
                  child: const Text('Duration of the course posted', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black))),
            ),
            Uihelper.CustomTextBox(duration, "Text..", false),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 140.0),
              child: Container(
                //color: Colors.blue,
                  child: const Text('Cost of the course posted',
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black))),
            ),
            Uihelper.CustomTextBox(cost, "Text..", false),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 100.0),
              child: Container(
                //color: Colors.blue,
                  child: const Text('Category of the course posted',
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black))),
            ),
            Uihelper.CustomTextBox(category, "Text..", false),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 100.0),
              child: Container(
                //color: Colors.blue,
                  child: const Text('Description of the course posted',
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black))),
            ),
            Uihelper.CustomTextBox(descr, "Text..", false),

            const SizedBox(height: 20.0,),
            Uihelper.CustomIconButton(() {
              addData(coursetitle.text.toString(), duration.text.toString(), cost.text.toString(), category.text.toString(),descr.text.toString());
            }, "Save", Icons.check),
            const SizedBox(height: 10,),
            Uihelper.CustomButton(() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CourseSplashscreen()));
            }, 'Post Course')
          ],

        ),
      ),

    );
  }
}


