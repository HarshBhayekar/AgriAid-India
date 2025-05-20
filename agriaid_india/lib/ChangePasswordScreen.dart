// ignore_for_file: prefer_const_constructors

import 'package:agriaid_india/Login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangePasswordScreen(),
    );
  }
}

class ChangePasswordScreen extends StatefulWidget {
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void _changePassword() {
    if (_formKey.currentState!.validate()) {
      // Check if both password and confirm password are not empty
      if (_passwordController.text.isNotEmpty && _confirmPasswordController.text.isNotEmpty) {
        // Check if both password and confirm password match
        if (_passwordController.text == _confirmPasswordController.text) {
          // Navigate to the next page after successful password change
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Password changed successfully!'),
            ),
          );
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Login()),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Passwords do not match'),
            ),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Please enter both password and confirm password'),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30.0), // Set the height here
        child: AppBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  'assets/ChangePassword.jpg', // Replace with the actual path of the image
                  height: 270,
                ),
                SizedBox(height: 16.0),
                Text(
                  'Change Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _passwordController,
                  style:
                      TextStyle(fontFamily: 'Poppins'), // Added style property
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontFamily: 'Poppins',fontSize: 14), // Added labelStyle property
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                TextFormField(
                  controller: _confirmPasswordController,
                  style:
                      TextStyle(fontFamily: 'Poppins'), // Added style property
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(
                        fontFamily: 'Poppins',fontSize: 14), // Added labelStyle property
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true, // Optional: hides the text input
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),
                SizedBox(
                  height: 65,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: _changePassword, // Call _changePassword function here
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff528D22),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      textStyle: TextStyle(fontSize: 16),
                    ),
                    child: Text(
                      'Change',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
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

