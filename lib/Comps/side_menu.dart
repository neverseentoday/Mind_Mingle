import 'package:flutter/material.dart';
import 'package:mind_mingle/job_page.dart';
class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
       child: Padding(
         padding: const EdgeInsets.only(top: 0.0),
         child: ListView(
           children: [
             UserAccountsDrawerHeader(
                 accountName: const Text('Hello'),
                 accountEmail: const Text('user@gmail.com'),
             currentAccountPicture: CircleAvatar(
               child: Image.asset('assets/images/app_logo.png',width: 90,height: 90,)
             ),
             ),
           ListTile(
             leading:const Icon(Icons.bookmark_add),
             title: const Text('My Jobs',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
             onTap: (){},
           ),ListTile(
               leading:const Icon(Icons.video_library_sharp),
               title: const Text('Interview Preparation',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
               onTap: (){},
             ),ListTile(
               leading:const Icon(Icons.description),
               title: const Text('Resume',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
               onTap: (){},
             ),ListTile(
               leading:const Icon(Icons.fact_check_rounded),
               title: const Text('Job Seeker Guidance',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
               onTap: (){},
             ),ListTile(
               leading:const Icon(Icons.settings),
               title: const Text('Profile Settings',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
               onTap: (){},
             ),
           Padding(
             padding: const EdgeInsets.only(top: 10.0),
             child: OutlinedButton(onPressed: (){
               Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const job_page()));
             }, child: const Text("Post a job",style: TextStyle(color: Colors.blueAccent,fontSize: 18,fontWeight: FontWeight.w600),),),
           )],
         ),
       ),
    );
  }
}
