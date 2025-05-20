// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 178, 197, 156),
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: Card(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // College Banner
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/banner.jpg'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                // College Name
                Text(
                  'Gramin Technical and Management Campus',
                      
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,color: Colors.green),
                      
                  textAlign: TextAlign.center, // Add this to center the text
                ),
                SizedBox(height: 15),
                // Profile Image
                Container(
                  height: 165,
                  width: 135,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/profile4.jpg'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.rectangle,
                    border: Border.all(width: 2),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Name: ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Harsh Bahyekar',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Course: ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Computer Engineering',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Year: ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Third Year',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'DOB: ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '08-04-2004',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Mobile: ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '9322753721',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Address: ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'At Post Tamsa',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 16,)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
