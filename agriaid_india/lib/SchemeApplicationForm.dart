import 'package:agriaid_india/Home.dart';
import 'package:flutter/material.dart';



class SchemeApplicationForm extends StatefulWidget {
  @override
  _SchemeApplicationFormState createState() => _SchemeApplicationFormState();
}

class _SchemeApplicationFormState extends State<SchemeApplicationForm> {
  late String selectedScheme = '1. NFSM'; // Initialize with a default value

  final List<String> schemes = [
  '1. NFSM',
  '2. SMSP',
  '3. NMEO',
  '4. MIDH',
  '5. ISAM',
  '6. MOVCDNER',
  '7. DA',
  '8. SHC',
  '9. RAD',
  '10. PDMC',
  '11. MIF',
  '12. PKVY',
  '13. SMAM',
  '14. PM-KISAN',
  '15. PM-KMY',
  '16. PMFBY',
  '17. MISS',
  '18. AIF',
  '19. NDD'
]
;

  String gender = ''; // Variable to hold selected gender


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application',style: TextStyle(fontSize: 18,fontFamily: 'Poppins')),
        backgroundColor: Color.fromARGB(255, 170, 230, 172),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTextField('First Name'),
              SizedBox(height: 10),
              _buildTextField('Last Name'),
              SizedBox(height: 10),
              _buildTextField('City/Village'),
              SizedBox(height: 10),
              _buildTextField('Date of Birth'),
              SizedBox(height: 10),
              _buildTextField('Email ID'),
              SizedBox(height: 10),
              _buildTextField('Qualification'),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('Gender: '),
                  Radio(
                    value: 'Male',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = 'Male';
                      });
                    },
                  ),
                  Text('Male'),
                  Radio(
                    value: 'Female',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = 'Female';
                      });
                    },
                  ),
                  Text('Female'),
                ],
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: selectedScheme, // Initialize with the default value
                onChanged: (value) {
                  setState(() {
                    selectedScheme = value!;
                  });
                },
                items: schemes.map<DropdownMenuItem<String>>((String scheme) {
                  return DropdownMenuItem<String>(
                    value: scheme,
                    child: Text(scheme),
                  );
                }).toList(),
                decoration: InputDecoration(
                  labelText: 'Select Scheme',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              
              
              SizedBox(height: 10),
              Text(
                'Upload Documents',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                child: Text('Upload',style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}