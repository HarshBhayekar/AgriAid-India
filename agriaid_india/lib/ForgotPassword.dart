// ignore_for_file: prefer_const_constructors

import 'package:agriaid_india/ChangePasswordScreen.dart';
import 'package:agriaid_india/Splashscreen.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _otp1Controller = TextEditingController();
  final TextEditingController _otp2Controller = TextEditingController();
  final TextEditingController _otp3Controller = TextEditingController();
  final TextEditingController _otp4Controller = TextEditingController();

  void _validateOTP() {
    if (_formKey.currentState!.validate()) {
      String otp = _otp1Controller.text +
          _otp2Controller.text +
          _otp3Controller.text +
          _otp4Controller.text;
      if (otp == '4252' || otp == '8268') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
            'OTP Verified',
            style: TextStyle(
                color: Colors.green, fontFamily: 'Poppins', fontSize: 18),
          )),
        );
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ChangePasswordScreen()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
            'Invalid OTP',
            style: TextStyle(
                color: Colors.red, fontFamily: 'Poppins', fontSize: 18),
          )),
        );
      }
    }
  }

  void _resendOTP() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(
        'AgriAid INDIA OTP : 4 2 5 2',
        style:
            TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 18),
      )),
    );
  }

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
          'OTP Sent Successfully',
          style: TextStyle(color: Colors.green),
        )),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
          'AgriAid INDIA OTP : 8 2 6 8',
          style: TextStyle(
              color: Colors.white, fontFamily: 'Poppins', fontSize: 18),
        )),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
        backgroundColor: Color.fromARGB(255, 197, 209, 182),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 250,
                    child: Image.asset(
                        'assets/OTP1.png')), // Assuming you have the image asset
                SizedBox(height: 70),
                Text(
                  'Enter OTP',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildOTPField(_otp1Controller),
                    SizedBox(width: 15),
                    _buildOTPField(_otp2Controller),
                    SizedBox(width: 15),
                    _buildOTPField(_otp3Controller),
                    SizedBox(width: 15),
                    _buildOTPField(_otp4Controller),
                    SizedBox(width: 15),
                  ],
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: _resendOTP,
                  child: Text(
                    'Resend OTP',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 65,
                  width: 200,
                  child: ElevatedButton(
                    onPressed: _validateOTP,
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
                      'Verify',
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

  Widget _buildOTPField(TextEditingController controller) {
    return SingleChildScrollView(
      child: Container(
        width: 60,
        child: TextFormField(
          controller: controller,
          maxLength: 1,
          decoration: InputDecoration(
            counterText: '',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          style: TextStyle(fontFamily: 'Poppins'),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Empty';
            }
            return null;
          },
        ),
      ),
    );
  }
}
