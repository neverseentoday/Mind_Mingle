import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mind_mingle/Comps/text_field.dart';
import 'package:mind_mingle/WebDevCourses.dart';
import 'package:mind_mingle/job_page.dart';
import 'package:mind_mingle/splash_screen.dart';
import 'package:mind_mingle/login_page.dart';
import 'package:mind_mingle/Comps/side_menu.dart';
import 'package:mind_mingle/teachPage.dart';
import 'package:mind_mingle/Comps/list.dart';
import 'package:mind_mingle/GetHiredPage.dart';
import 'package:mind_mingle/BasicCourses.dart';
import 'package:mind_mingle/Comps/aboutus.dart';
import 'package:mind_mingle/Comps/contact us.dart';
import 'package:mind_mingle/Comps/tc.dart';
import 'package:mind_mingle/SoftwareCourses.dart';
import 'package:mind_mingle/bdcourses.dart';
import 'package:mind_mingle/Comps/userProfile.dart';
import 'package:mind_mingle/pdcourse.dart';
class home_page extends StatelessWidget {
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var arrNames=['Software Development Courses','Basic Courses','Business Courses','Web Development Courses'];
    return Scaffold(
      body:
      SingleChildScrollView(
        reverse: true,
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 52),
                child: Container(
                  //color: Colors.blue,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAppe()));
                          },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4.0),
                              child: Icon(Icons.account_circle,size: 48,color: Colors.black,),
                            ),
                          ),
                          Container(width: 42,),
                          Image.asset('assets/images/app_logo.png',height: 52,width: 100,),
                          Container(width: 42,),
                          Container(margin:EdgeInsets.only(left: 10.0),child: IconButton(onPressed:(){}, icon:Icon(Icons.favorite_border),iconSize:36 ,)),
                          IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart_outlined),iconSize: 36,)
                        ]
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Container(
                  width: 300,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2,
                            )
                        ),
                        hintText: 'Search for courses',
                        prefixIcon:Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide:BorderSide(
                                color:Colors.grey,
                                width:2
                            )
                        )

                    ),
                  ),
                ),
              ),



              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:16.0),
                    child: OutlinedButton(
                        child:Text('Post a job',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'AppFont'),),
                        onPressed:(){
                          Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>job_page()));
                        }
                    ),
                  ),
                  Container(width: 38.0,),
                  Padding(
                    padding: const EdgeInsets.only(right: 1),
                    child: OutlinedButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>teach_page()));
                    }, child: Text('Teach on MindMingle',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'AppFont'))),
                  ),
                ],

              ),
              Container(height: 10.0,),
              Padding(
                padding: const EdgeInsets.only(right:54.0),
                child: OutlinedButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>GetHired()));
                }, child:Text('Get Hired',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontFamily: 'AppFont'))),
              ),

              Padding(
                  padding: const EdgeInsets.only(right: 60.0,top: 20.0),
                  child: Center(
                      child: Text('Courses',
                        style:TextStyle(fontWeight: FontWeight.bold,fontSize: 18 ,
                            decoration:TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.solid),
                      )
                  )
              ),
              SizedBox(height: 20,),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text('Basic Courses ',style: TextStyle(fontFamily: 'AppFont',fontWeight: FontWeight.bold,fontSize: 17),),
                      ),
                      TextButton(onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                      }, child:Icon(Icons.arrow_forward_sharp) ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text('Software Development Courses ',style: TextStyle(fontFamily: 'AppFont',fontWeight: FontWeight.bold,fontSize: 17),),
                      ),
                      TextButton(onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Myapp()));
                      }, child:Icon(Icons.arrow_forward_sharp) ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text('Web Development Courses ',style: TextStyle(fontFamily: 'AppFont',fontWeight: FontWeight.bold,fontSize: 17),),
                      ),
                      TextButton(onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAppp()));
                      }, child:Icon(Icons.arrow_forward_sharp) ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text('Business Development Courses ',style: TextStyle(fontFamily: 'AppFont',fontWeight: FontWeight.bold,fontSize: 17),),
                      ),
                      TextButton(onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApppp()));
                      }, child:Icon(Icons.arrow_forward_sharp) ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Text('Personal Development Courses ',style: TextStyle(fontFamily: 'AppFont',fontWeight: FontWeight.bold,fontSize: 17),),
                      ),
                      TextButton(onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyAppppp()));
                      }, child:Icon(Icons.arrow_forward_sharp) ),
                    ],
                  ),
                  Container(width:50 ,height: 10,),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 400,
                    height: 150,
                    color: Colors.black,
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            child: TextButton(onPressed:(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUsPage()));
                            }, child:Text('About Us',style: TextStyle(color: Colors.white),) )),

                        Container(
                            alignment: Alignment.center,
                            child: TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactUsPage()));
                            }, child: Text('Contact Us',style: TextStyle(color: Colors.white),))),
                        Container(
                            alignment: AlignmentDirectional.center,
                            child: TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsAndConditionsPage()));
                            }, child: Text('Terms and Conditions',style: TextStyle(color: Colors.white)))),

                      ],
                    ),


                  ),

                ],
              )

            ]



        ),
      ),
      drawer:SideBar(),

    );



  }
}
