// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:agriaid_india/Login.dart';
import 'package:flutter/material.dart';
import 'package:agriaid_india/Onboarding.dart';
import 'package:agriaid_india/Registration.dart';
import 'package:agriaid_india/Splashscreen.dart';
import 'package:flutter/gestures.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final TextEditingController FirstNameController = TextEditingController();
  final TextEditingController LastNameController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController MobileController = TextEditingController();
  final TextEditingController DobController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();
  void Register() {
    String FirstName = FirstNameController.text;
    String LastName = LastNameController.text;
    String Email = EmailController.text;
    String Mobile = MobileController.text;
    String Dob = DobController.text;
    String Password = PasswordController.text;

    if (FirstName == '' ||
        LastName == '' ||
        Email == '' ||
        Mobile == '' ||
        Dob == '' ||
        Password == '') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
          'All fields are required',
          style: TextStyle(color: Color.fromARGB(255, 255, 0, 0)),
        )),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
          'Registration Successful',
          style: TextStyle(color: Color.fromARGB(255, 0, 255, 13)),
        )),
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
          color:Color.fromARGB(137, 8, 102, 11),
            height: 360,
            // child: Positioned.fill(
            //   // child: Image.asset(
            //   //   'assets/Registration.jpg', // Add your image asset here
            //   //   fit: BoxFit.fitHeight,
            //   //   alignment: Alignment.topCenter,
            //   // ),
            // ),
          ),
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
                        'Registration',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            color: Color(0xFF538D22)),
                      ),
                      SizedBox(height: 30),
                      TextField(
                        controller: FirstNameController,
                        style: TextStyle(fontFamily: 'Poppins', height: 1),
                        decoration: InputDecoration(
                          labelText: 'First Name',
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
                        controller: LastNameController,
                        style: TextStyle(fontFamily: 'Poppins', height: 1),
                        decoration: InputDecoration(
                          labelText: 'Last Name',
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
                      TextField(
                        controller: EmailController,
                        style: TextStyle(fontFamily: 'Poppins', height: 1),
                        decoration: InputDecoration(
                          labelText: 'E-mail',
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
                        controller: MobileController,
                        style: TextStyle(fontFamily: 'Poppins', height: 1),
                        decoration: InputDecoration(
                          labelText: 'Mobile',
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
                        controller: DobController,
                        style: TextStyle(fontFamily: 'Poppins', height: 1),
                        decoration: InputDecoration(
                          labelText: 'Date of Birth',
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
                        controller: PasswordController,
                        style: TextStyle(fontFamily: 'Poppins', height: 1),
                        decoration: InputDecoration(
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
                            'Register',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          onPressed: Register,
                        ),
                      ),
                      SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already have an Accouut? ',
                              style: TextStyle(color: Colors.black,fontSize: 16),
                            ),
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(color: Colors.green),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login()));
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
            top: 30,
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
    );
  }
}
