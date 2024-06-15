import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mind_mingle/Comps/side_menu.dart';
import 'package:mind_mingle/Comps/postcoursesplash.dart';
import 'package:mind_mingle/Comps/postjobqsplash.dart';
import 'package:mind_mingle/Comps/Uihelper.dart';
import 'package:mind_mingle/CourseDetailsUser.dart';
import 'package:mind_mingle/Comps/CourseSideBar.dart';
class CoursePage extends StatefulWidget {
  const CoursePage({super.key});

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        drawer: OldMonkBar(),
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text('Your Courses Page',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
          ),
          centerTitle: true,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15.0,top: 6.0),
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle,size: 39,)),
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: StreamBuilder(
          stream: FirebaseFirestore.instance.collection("Courses").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    var courseData = snapshot.data!.docs[index].data();
                    return GestureDetector(
                      onTap: () {
                        // Navigate to job details page when tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetails(courseData:courseData),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Card(
                          child: ListTile(
                            title: Text(courseData["Course title"]),
                            subtitle: Text(courseData["Course Description"]),
                            trailing: const Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: snapshot.data!.docs.length,
                );
              } else if (snapshot.hasError) {
                return Center(child: Text("${snapshot.error}"));
              } else {
                return const Center(child: Text('No Data found'));
              }
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );

  }
}
