import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mind_mingle/Comps/side_menu.dart';
import 'package:mind_mingle/Comps/postcoursesplash.dart';
import 'package:mind_mingle/Comps/postjobqsplash.dart';
import 'package:mind_mingle/Comps/Uihelper.dart';
import 'package:mind_mingle/ApplyJob.dart';

class GetHired extends StatefulWidget {
  const GetHired({super.key});

  @override
  State<GetHired> createState() => _GetHiredState();
}

class _GetHiredState extends State<GetHired> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        drawer: SideBar(),
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(top: 13.0),
            child: Text('Get Hired Page',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
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
        stream: FirebaseFirestore.instance.collection("Job Data").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  var jobData = snapshot.data!.docs[index].data();
                  return GestureDetector(
                    onTap: () {
                      // Navigate to job details page when tapped
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ApplyJobPage(jobData:jobData),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: ListTile(
                          title: Text(jobData["Job title"]),
                          subtitle: Text(jobData["Job Description"]),
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
