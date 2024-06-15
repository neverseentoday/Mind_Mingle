import 'dart:developer';
import 'package:mind_mingle/Comps/postjobqsplash.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mind_mingle/Comps/Uihelper.dart';

class PostJobQuestions extends StatefulWidget {
   const PostJobQuestions({super.key});

  @override
  State<PostJobQuestions> createState() => _PostJobQuestionsState();
}

class _PostJobQuestionsState extends State<PostJobQuestions> {
  TextEditingController jobtitle=TextEditingController();

  TextEditingController description=TextEditingController();

  TextEditingController salary=TextEditingController();

  TextEditingController type=TextEditingController();

  TextEditingController eligibility=TextEditingController();
  addData(String title,String des,String salary,String type,String eli)async{
    if(title==""&&des==""&&salary==""&&type==""&&eli==""){
      Uihelper.CustomAlertBox(context, 'Enter required fields');
    }
    else{
      FirebaseFirestore.instance.collection("Job Data").doc(title).set({
        "Job title":title,
        "Job Description":des,
        "Salary and Perks":salary,
        "Type of job":type,
        "Eligibility":eli,
      }).then((value)=> log('Data Inserted'));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Job Page',
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
              padding: EdgeInsets.only(top: 30.0, right: 110.0),
              child: Text(' Title of the job you are posting', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),),
            ),
            Uihelper.CustomTextBox(jobtitle, "Text..", false),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 120.0),
              child: Container(
                  margin: const EdgeInsets.only(left: 1.0),
                  //color: Colors.blue,
                  child: const Text('Description of the job posted', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black))),
            ),
            Uihelper.CustomTextBox(description, "Text", false),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 80.0),
              child: Container(
                //color: Colors.blue,
                  child: const Text('Salary and perks of the job posted',
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black))),
            ),
            Uihelper.CustomTextBox(salary, "Text", false),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 55.0),
              child: Container(
                //color: Colors.blue,
                  child: const Text('Type of job (remote/hybrid/on office)',
                      style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black))),
            ),
            Uihelper.CustomTextBox(type, "Text", false),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 186.0),
              child: Container(
                //color: Colors.blue,
                  child: const Text('Eligibility Criteria ', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black))),
            ),
            Uihelper.CustomTextBox(eligibility, "Text", false),
            const SizedBox(height: 20.0,),
            Uihelper.CustomIconButton(() {
              addData(jobtitle.text.toString(), description.text.toString(), salary.text.toString(), type.text.toString(), eligibility.text.toString());
            }, "Save", Icons.check),
            const SizedBox(height: 10,),
            Uihelper.CustomButton(() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>JobSplashscreen()));
            }, 'Post Job')
          ],

        ),
      ),

    );
  }
}


