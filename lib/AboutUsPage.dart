import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 217, 195),
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.lightGreen, // changed app bar color
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // added a profile picture
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/profile.jpg'),
                  ),
                  SizedBox(height: 16),

                  Divider(
                      thickness: 2,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Hi, this is Harsh Bhayekar.',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // increased font size and added bold
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Recently, I had the pleasure of participating in a Flutter training program at DREAM Webbis. This experience was a fantastic opportunity to enhance my mobile app development skills using Flutter and Dart.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'The program was very hands-on, which allowed me to build several applications from scratch. This approach was incredibly effective in reinforcing my understanding of key concepts. Among the apps I developed were a functional Calculator and a Chess game.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'At DREAM Webbis, we delved into various aspects of the Flutter framework, including Stateful and Stateless Widgets, Container, SizedBox, and more complex components like ListView and GridView. These sessions were enriched with live implementation exercises, making the learning process very engaging.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'A highlight of the training was the mentorship of Miss Aarti Ragella. Her willingness to provide guidance and answer our questions greatly enhanced my learning experience.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Overall, the Flutter training program was outstanding. It equipped me with valuable practical skills, provided excellent mentorship, and created a supportive learning environment. I am enthusiastic about continuing my journey in Flutter development.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 16),
                  // added a divider
                  Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16),
                  // added a footer text
                  Text(
                    'Copyright 2023 AgriAid INDIA. All rights reserved.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}