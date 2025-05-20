// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agriaid_india/SchemeApplicationForm.dart';
import 'package:flutter/material.dart';

class CentrallySponcered extends StatefulWidget {
  @override
  State<CentrallySponcered> createState() => _CentrallySponceredState();
}

class _CentrallySponceredState extends State<CentrallySponcered> {
  void _showBottomSheet(
      BuildContext context,
      String schemeName,
      String description,
      String dateOfApplication,
      List<String> documents,
      List<String> states) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.8, // 80% of the screen height
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(30.0), // Padding of 30 from all sides
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    schemeName,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Description:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Date of Application:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    dateOfApplication,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Available for States:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  for (var state in states)
                    Text(
                      '- $state',
                      style: TextStyle(fontSize: 16),
                    ),
                  SizedBox(height: 10),
                  Text(
                    'Required Documents:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  for (var doc in documents)
                    Text(
                      '- $doc',
                      style: TextStyle(fontSize: 16),
                    ),
                  SizedBox(height: 10),
                  Center(
                    child: SizedBox(
                      height: 50,
                      width: 150,
                      child: ElevatedButton(
                        onPressed: () {
                           Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SchemeApplicationForm()));;
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text(
                          'Apply Here',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 5, 99, 8),

        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Centrally Sponsored Schemes',
              style: TextStyle(fontSize: 18,color: Colors.white),
            ),
            Text(
              '(i) Rashtriya Krishi Vikas Yojana',
              style: TextStyle(fontSize: 14,color: Colors.white),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Soil    Health    Card (SHC)',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Date of Application: 10 May - 20 Aug 2024',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'Soil    Health    Card (SHC)',
                        'Soil health card provides information to farmers on nutrient status of their soil along with recommendation on appropriate dosage of nutrients to be applied for improving soil health and its fertility. The indicators are typically based on farmers, practical experience and knowledge of local natural resources. The card lists soil health indicators that can be assessed without the aid of technical or laboratory equipment. The Scheme rolls out a decentralized system of soil testing which will help in developing a nationwide soil fertility map on a GIS platform that can easily be integrated with the real time decision support systems being developed. In order to develop the soil fertility map, Government of India has decided to conduct 5 Crore Soil Samples across the country during year 2023-\n24 to 2025-26.',
                        '10 May - 20 Aug 2024',
                        [
                          'Land Ownership Proof',
                          'Identity Proof (Aadhaar Card or equivalent)',
                          'Address Proof (Aadhaar Card, Voter ID, or utility bill)'
                        ],
                        ['27 States/Union Territories'],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Text(
                        'More',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rainfed Area Development (RAD)',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Date of Application: 12 May - 20 Aug 2024',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'Rainfed Area Development (RAD)',
                        'RAD is being implemented since 2014-15. RAD adopts an area based approach in cluster mode for promoting Integrated Farming System (IFS) which focuses on multi-cropping, rotational\n\ncropping, inter-cropping, mixed cropping practices with allied activities like horticulture, livestock, fishery, apiculture etc. to',
                        '12 May - 20 Aug 2024',
                        [
                          'Aadhaar Card',
                          'Bank Account Details',
                          'Farmers Pension Scheme Application Form',
                          'Land Ownership Proof',
                          'Age Proof'
                        ],
                        ['27 States/Union Territories'],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Text(
                        'More',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Per Drop More Crop (PDMC)',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Date of Application: 13 May - 20 Aug 2024',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'Per Drop More Crop (PDMC)',
                        'In order to increase water use efficiency at the farm level through Micro Irrigation technologies i.e. drip and sprinkler irrigation systems, Per Drop More Crop (PDMC) scheme was launched during 2015-16. The Micro Irrigation helps in water saving as well as reduced fertilizer usage through fertigation, labour expenses, other input costs and overall income enhancement of farmers.\n\nIt also supports micro level water harvesting, storage, management etc. activities as Other Interventions (OI) to supplement source creation for Micro Irrigation. OI activities allowed on need basis up to 40% of the total allocation for North East States, Himalayan States, Jammu & Kashmir, Ladakh and up to 20% for other States.\n\nAn area of 78 lakh hectare has been covered under Micro irrigation through the PDMC scheme from 2015-16 to 2022-23.',
                        '13 May - 20 Aug 2024',
                        [
                          'Aadhaar Card',
                          'Bank Account Details',
                          'Farmers Pension Scheme Application Form',
                          'Land Ownership Proof',
                          'Age Proof'
                        ],
                        ['27 States/Union Territories'],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Text(
                        'More',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Micro Irrigation Fund (MIF)',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Date of Application: 13 May - 20 Aug 2024',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'Micro Irrigation Fund (MIF)',
                        'A Micro Irrigation Fund (MIF) of initial corpus Rs 5000 crore has been created with NABARD with major objective to facilitate the States in mobilizing the resources for expanding coverage of Micro Irrigation. Under the funding arrangement, NABARD lends to the States/UTs at 3% lower interest rate than the corresponding cost of fund mobilized by NABARD from the market. The interest subvention on the loan under MIF is borne by Centre under PDMC. Projects with loans under MIF worth Rs 4710.96 crore have been approved so far. Loans amounting Rs.2812.24 crore has been disbursed to States of Andhra Pradesh, Tamil Nadu, Gujarat, Punjab, Haryana and Rajasthan. The Ministry provides interest subvention on the loan availed by the States which is met from PDMC Scheme. As per the Budget 2021-22, the corpus of the fund is to be doubled to Rs.10000 crores. MIF is now merged with\n\nPDMC.',
                        '13 May - 20 Aug 2024',
                        [
                          'Aadhaar Card',
                          'Bank Account Details',
                          'Farmers Pension Scheme Application Form',
                          'Land Ownership Proof',
                          'Age Proof'
                        ],
                        ['27 States/Union Territories'],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Text(
                        'More',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Paramparagat Krishi Vikas Yojana (PKVY)',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Date of Application: 12 May - 20 Aug 2024',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'Paramparagat Krishi Vikas Yojana (PKVY)',
                        'Paramparagat Krishi Vikas Yojana (PKVY) aims to increase soil fertility and thereby helps in production of healthy food through organic practices without the use of agro-chemicals. The scheme is implemented in a cluster mode with unit cluster size of 20 hectares. A group shall comprise minimum 20 farmers (may be more if individual holdings are less). Farmers in a group can avail benefit of maximum of 2 ha as per provision of PKVY. 25 such clusters are converted into one large cluster of about 500 ha area to facilitate marketing of organic produce. The scheme provides for an assistance of Rs. 31,500 per ha to states, out of which i.e., Rs. 15,000 is given\n\nas incentives to a farmer directly through DBT.',
                        '25 May - 10 Dec 2024',
                        [
                          'Aadhaar Card',
                          'Bank Account Details',
                          'Farmers Pension Scheme Application Form',
                          'Land Ownership Proof',
                          'Age Proof'
                        ],
                        ['27 States/Union Territories'],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Text(
                        'More',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sub-Mission on Agriculture Mechanization (SMAM)',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Date of Application: 12 May - 20 Aug 2024',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () => _showBottomSheet(
                        context,
                        'Sub-Mission on Agriculture Mechanization (SMAM)',
                        'Sub Mission on Agricultural Mechanization (SMAM) is being implemented w.e.f April, 2014 which aims at catalyzing an accelerated but inclusive growth of agricultural mechanization in India with the objectives of Increasing the reach of farm mechanization to small and marginal farmers and to the regions where availability of farm power is low, promoting ‘Custom Hiring Centres’ to offset the adverse economies of scale arising due to small landholding and high cost of individual ownership, creating hubs for hi-tech& high value farm equipments, creating awareness among stakeholders through demonstration and capacity building activities and Ensuring performance testing and certification at designated testing centers located all over the country. Till date Rs. 6748.78 Crore have been released to State Governments, distributed more than 15,75,719 agricultural machinery & equipment’s including Tractors, Power Tillers, Self-Propelled Machineries and Plant Protection Equipment and established 23472 nos of Custom Hiring Centres, 504 nos of Hi-Tech Hubs and 20597 nos. of Farm Machinery Banks.\n\nPromotion of Drone Technology under SMAM\n\nLooking into the unique advantages of Drone technologies in agriculture, a Standard Crop Specific Operating Procedures (SOPs) released the for use of drones in pesticide and nutrient application in public domain on 20.04.2023, which provides concise instructions for effective and safe operations of drones\nFrom within the funds of SMAM, so far an amount of Rs.\n\n138.82 crores have been released towards Kisan drone promotion, which include purchase of 317 Drones for their demonstration in 79070 hectares of land and supply of 461 drones to the farmers on subsidy and also supply of 1595 drones to the CHCs for providing drone services to the farmers on rental basis.',
                        'Updated Soon',
                        [
                          'Aadhaar Card',
                          'Drone Operator License',
                          'Drone Registration Certificate',
                          'Flight Permissions',
                          'Insurance Certificate',
                          'Project or Use Case Proposal',
                          'Bank Account Details'
                        ],
                        ['27 States/Union Territories'],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                          // Rounded corners
                        ),
                      ),
                      child: Text(
                        'More',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
