import 'package:flutter/material.dart';
import 'package:mind_mingle/Comps/Uihelper.dart';
import 'package:mind_mingle/Comps/text_field.dart';
import 'package:mind_mingle/home_page.dart';
import 'package:mind_mingle/Comps/list.dart';
import 'package:mind_mingle/postcourseq.dart';
class teach_page extends StatelessWidget {
  const teach_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0,top:20.0),
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>home_page()));
                      }, child: const Text('Back',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),)),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 70.0,top: 20.0),
                      child: Text('Mind Mingle',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15,fontFamily: 'AppFont'),),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 84.0,top: 18.0,right: 10.0),
                      child: Icon(Icons.account_circle,size: 28,),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 500,
                width: 800,
                //margin: EdgeInsets.only(top: 10.0),
                //color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0,top: 2.0),
                  child: Image.asset('assets/images/teachpagepic.png',width: 700,),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 7.0,left: 10.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Come teach with us",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black87),)),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text('Become an instructor and change lives — including your own.',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 13,color: Colors.blueGrey),),
              ),
              Uihelper.CustomButton(() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const PostCourseQuestions()));
              }, "Start Teaching")
            ],
          ),
        )
    );
  }
}
