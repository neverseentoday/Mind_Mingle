

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  // Function to open URLs
  Future<void> _launchURL(String url) async {
    if (await canLaunchUrl(url as Uri)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
        centerTitle: true,
        backgroundColor: Colors.yellowAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.indigo],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20.0),
            Text(
              'Contact Us',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'If you have any questions or feedback about Mind Mingle, please feel free to contact us. Our team is here to assist you!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            ListTile(
              leading: Icon(Icons.email, color: Colors.white),
              title: Text(
                'Email: mindmingle@gmail.com',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                _launchURL('mailto:mindmingle@gmail.com');
              },
            ),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.white),
              title: Text(
                'Phone: +91 913703546',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                _launchURL('tel:+91913703546');
              },
            ),
            SizedBox(height: 20.0),
            Text(
              'Follow us on social media:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.mail,size: 45,color: Colors.black,),
                  color: Colors.white,
                  onPressed: () {
                    _launchURL(
                        'https://www.linkedin.com/in/rahul-boney-90b5021b0/?originalSubdomain=in');
                  },
                ),
                //Image.asset('assets/icons/linkedin.png'),
                
                InkWell(onTap: (){},child: Image.asset('assets/icons/instagram.png',height: 40,width: 40,))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ContactUsPage(),
  ));
}
