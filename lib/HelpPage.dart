// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Help'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align text to the left
            children: [
              // Header
              Text(
                'Help and Support',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen),
              ),
              SizedBox(height: 16),

              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 159, 160, 159),
              ),
              SizedBox(height: 16),

              // FAQ Section
              Text(
                'Frequently Asked Questions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              ListTile(
                leading: Text('Q:'),
                title: Text(
                  'How do I login to the app?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Text('A:'),
                title: Text(
                    'To login to the app, simply tap on the login button and enter your username and password.'),
              ),
              SizedBox(height: 8),
              ListTile(
                leading: Text('Q:'),
                title: Text(
                  'How do I reset my password?',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Text('A:'),
                title: Text(
                    'To reset your password, tap on the forgot password button and follow the instructions.'),
              ),
              SizedBox(height: 16),

              // Contact Us Section
              Text(
                'Contact Us',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'If you have any questions or concerns, please don\'t hesitate to contact us:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email: support@AgriAid.com'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone: 1800-555-1800'),
              ),
              SizedBox(height: 16),
              Divider(
                thickness: 1,
                color: Color.fromARGB(255, 159, 160, 159),
              ),
              SizedBox(height: 16),

              // Footer
              Text(
                'Copyright 2023 AgriAid INDIA. All rights reserved.',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
