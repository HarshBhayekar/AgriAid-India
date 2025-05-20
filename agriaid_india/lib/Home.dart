// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:agriaid_india/AboutUsPage.dart';
import 'package:agriaid_india/ForgotPassword.dart';
import 'package:agriaid_india/HelpPage.dart';
import 'package:agriaid_india/Homepage.dart';
import 'package:agriaid_india/Login.dart';
import 'package:agriaid_india/ProfilePage.dart';
import 'package:agriaid_india/SchemeApplicationForm.dart';
import 'package:agriaid_india/Schemes.dart';
import 'package:agriaid_india/Splashscreen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedindex = 0;
  PageController pageController = PageController();

  void onTapped(int index) {
    setState(() {
      selectedindex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AgriAid INDIA'),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 34, 126, 34),
                    Color.fromARGB(255, 8, 75, 4),
                  ],

                  begin: Alignment.topCenter, // start alignment

                  end: Alignment.bottomCenter, // end alignment
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40.0, // increased radius to accommodate the border

                    backgroundColor: Color.fromARGB(255, 2, 62, 8), // border color

                    child: CircleAvatar(
                      radius: 37.0,
                      backgroundImage: AssetImage('assets/profile1.jpg'),
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Harsh S.\nBhayekar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home()));
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('Schemes'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Schemes()));
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HelpPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('About Us'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUsPage()));
              },
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text(
                'Version 1.0\nCopyright 2023 AgriAid INDIA. All rights reserved.',
                style: TextStyle(color: Colors.grey,fontSize: 12),
              ),
              onTap: null,
            ),
          ],
        ),
      ),
      body: PageView(
        controller: pageController,
        children: [
          Homepage(),
          Schemes(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Schemes',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}
