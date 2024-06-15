import 'package:flutter/material.dart';
import 'package:mind_mingle/teachPage.dart';
class OldMonkBar extends StatelessWidget {
  const OldMonkBar({super.key});

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
              leading:const Icon(Icons.video_library_sharp),
              title: const Text('My Courses',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
              onTap: (){},
            ),ListTile(
              leading:const Icon(Icons.monetization_on_outlined),
              title: const Text('My Reward Points',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
              onTap: (){},
            ),ListTile(
              leading:const Icon(Icons.mail_outline),
              title: const Text('Contact Us',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
              onTap: (){},
            ),ListTile(
              leading:const Icon(Icons.question_answer),
              title: const Text('Help and FAQs',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
              onTap: (){},
            ),ListTile(
              leading:const Icon(Icons.settings),
              title: const Text('Settings',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
              onTap: (){},
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: OutlinedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const teach_page()));
              }, child: const Text("Post a course",style: TextStyle(color: Colors.blueAccent,fontSize: 18,fontWeight: FontWeight.w600),),),
            )],
        ),
      ),
    );
  }
}
