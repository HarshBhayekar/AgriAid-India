// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:agriaid_india/ForgotPassword.dart';
import 'package:agriaid_india/Home.dart';
import 'package:agriaid_india/Onboarding.dart';
import 'package:agriaid_india/Registration.dart';
import 'package:agriaid_india/Splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email == 'harsh' && password == '123') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
          'Login Successful',
          style: TextStyle(color: Colors.green),
        )),
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
          'Invalid Email or Password',
          style: TextStyle(color: Colors.red),
        )),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Login3.jpg'), 

          fit: BoxFit.fitHeight,

          alignment: Alignment.topCenter,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                          height:
                              10), // Add space from the top of the container
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: Color(0xFF538D22)),
                      ),
                      SizedBox(height: 30),
                      TextField(
                        controller: _emailController,
                        style: TextStyle(fontFamily: 'Poppins', height: 1),
                        decoration: InputDecoration(
                          // filled: true,
                          // fillColor: Color.fromARGB(45, 82, 141, 34),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              color: Color(0xFF143601),
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Poppins',
                              fontSize: 14), // To match the label color
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Color(0xFF143601),
                              width: 1.5, // Increased border width
                              style: BorderStyle.solid,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Color(0xFF143601),
                              width: 1.0, // Increased border width
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: _passwordController,
                        style: TextStyle(fontFamily: 'Poppins', height: 1),
                        decoration: InputDecoration(
                          // filled: true,
                          // fillColor: Color.fromARGB(45, 82, 141, 34),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              color: Color(0xFF143601),
                              fontWeight: FontWeight.w100,
                              fontFamily: 'Poppins',
                              fontSize: 14), // To match the label color
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Color(0xFF143601),
                              width: 1.5, // Increased border width
                              style: BorderStyle.solid,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Color(0xFF143601),
                              width: 1.0, // Increased border width
                              style: BorderStyle.solid,
                            ),
                          ),
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff528D22),
                            padding: EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          onPressed: _login,
                        ),
                      ),
                      SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Forgot Password ?',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 3, 79, 10),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPassword()));
                                },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'New User? ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            TextSpan(
                              text: 'Create Account',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 16),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Registration()));
                                },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 40,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Onboarding()));
              },
            ),
          ),
        ],
      ),
    ));
  }
}
