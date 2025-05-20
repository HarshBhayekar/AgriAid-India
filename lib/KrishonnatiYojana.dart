// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agriaid_india/SchemeApplicationForm.dart';
import 'package:flutter/material.dart';

class KrishonnatiYojana extends StatefulWidget {
  @override
  State<KrishonnatiYojana> createState() => _KrishonnatiYojanaState();
}

class _KrishonnatiYojanaState extends State<KrishonnatiYojana> {
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
                                      SchemeApplicationForm()));
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
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Text(
              '(ii) Krishonnati Yojana',
              style: TextStyle(fontSize: 14, color: Colors.white),
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
                      'National Food Security Mission (NFSM)',
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
                        'National Food Security Mission (NFSM)',
                        'The Mission aims at increasing production of rice, wheat, pulses, coarse cereals (Maize and Barley) and Nutri-Cereals through area expansion and productivity enhancement in a sustainable manner in the identified districts of 28 States and 2 UTs (i.e., J&K and Ladakh). Other objectives include restoring Soil fertility and productivity at the individual farm level, enhancing farm level economy to restore confidence amongst the farmers and post harvest value addition at farm gate.\n\nSince the declaration of the International Year of Millets (IYM) 2023 by the UNGA in 2021, Government has taken a proactive multi stakeholder engagement approach to achieve the aim of IYM 2023 and taking Indian millets globally. 25 seed-hubs have been established to ensure availability of quality seed of latest improved varieties of Nutri cereals in the country. Millet missions have been launched across 13 states including Odisha, Tamil Nadu, Chhattisgarh, Assam, Karnataka, Madhya Pradesh, Maharashtra, Uttarakhand, Uttar Pradesh, Bihar, Himachal Pradesh, Gujarat and Rajasthan. More than 500 start-ups and 350 FPOs have been\n\nestablished and are operational in the millet ecosystem as of now.',
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
                      'Sub-Mission on Seed and Planting Material (SMSP)',
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
                        'Sub-Mission on Seed and Planting Material (SMSP)',
                        'SMSP covers the entire gamut of seed production chain, from production of nucleus seed to supply of certified seeds to the farmers, to provide support for creation of infrastructure conducive for development of the seed sector, support to the public seed producing organisations for improving their capacity and quality of seed production, create dedicated seed bank to meet unforeseen circumstances of natural calamities, etc. For effective monitoring, efficiency and transparency covering Seed chain from Nucleus- Breeder-Foundation-Certified Seed, first phase of Seed Authentication, Traceability & Holistic Inventory (SATHI) portal\n\nwas launched on 19th April, 2023. SMSP is now merged with NFSM.',
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
                      'National Mission on Edible Oils (NMEO)-Oil Palm',
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
                        'National Mission on Edible                Oils (NMEO)-Oil Palm',
                        'A new Centrally Sponsored Scheme namely, National Mission on Edible Oil (NMEO)-Oil Palm (NMEO-OP) has been launched by Government of India in 2021 in order to promote oil palm cultivation for making the country Aatamnirbhar in edible oils with special focus on North-Eastern States and A&N Islands. The Mission will bring additional area of 6.5 lakh ha under Oil Palm plantation with\n\n3.28 lakh ha in north-eastern states and 3.22 in rest of India in next 5 years from 2021-22 to 2025-26.',
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
                      'Mission for Integrated Development of Horticulture (MIDH)',
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
                        'Mission for Integrated Development of Horticulture (MIDH)',
                        'Mission for Integrated Development of Horticulture (MIDH), a Centrally Sponsored Scheme was launched during 2014-15 for holistic growth of the horticulture sector covering fruits, vegetables, root and tuber crops, mushrooms, spices, flowers, aromatic plants, coconut, cashew, cocoa and Bamboo. Major components include\n\nplantation infrastructure development, establishment of new orchards and gardens for fruits, vegetables, spices and flowers, rejuvenation of unproductive, old, and senile orchards, protected cultivation, promotion of organic farming, pollination support through bee keeping, horticulture mechanization, post-harvest management (phm) and marketing infrastructure etc.\n\nUnder MIDH since 2014-15 to 2023-24 (as on 31.10.2023) an additional area of 12.95 lakh ha. of identified horticulture crops has been covered, 872 nurseries established for production of quality planting material, 1.41 lakh ha. of old and senile orchards has been rejuvenated, 52069 ha. been covered under organic practices and\n\n3.07 lakh ha. has been covered under Protected Cultivation.',
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
                      'Integrated Scheme for Agriculture Marketing (ISAM)',
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
                        'Integrated Scheme for Agriculture Marketing (ISAM)',
                        'ISAM supports state governments in governing the agricultural produce marketing through creation and improvement of market structures, capacity building and generating access to market information. During 2017-18, National Agriculture Market Scheme popularly known as e-NAM scheme has also been made part of the same. National Agriculture Market (e-NAM) is a pan-India electronic trading portal which networks the existing APMC mandis to create a unified national market for agricultural commodities. 1389 mandis of 23 States and 04 UTs have been integrated to e- NAM platform and more than 1.76 Crore Farmers & 2.5 Lakh traders\n\nhave been registered on e-NAM portal.',
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
                      'Mission Organic value Chain Development for North Eastern Region',
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
                        'SMission Organic value Chain Development for North Eastern Region',
                        'he MOVCDNER aims at development of commodity specific, concentrated, certified organic production clusters in value chain mode to link growers with consumers and to support the development of entire value chain starting from inputs, seeds, certification, to the creation of facilities for collection, aggregation, processing, marketing and brand building initiative in Northeast Region (Arunachal Pradesh, Assam, Manipur, Meghalaya, Mizoram, Nagaland, Sikkim, and Tripura). Since 2015-16 (as on 06.12.2023), Rs 1035.17 crore has been released, 379 FPO/FPCs created covering\n\n189039 farmers and 172966 ha area.',
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
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Digital Agriculture',
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
                        'Digital Agriculture',
                        'The scheme aims to improve the existing National e- Governance Plan in Agriculture (NeGPA) by developing a digital public infrastructure for agriculture that will be built as an open source, open standard and interoperable public good to enable inclusive, farmer-centric solutions through relevant information services for crop planning and health, improved access to farm inputs, credit and insurance, help for crop estimation, market intelligence, and support for the growth of Agri Techs industry and start-ups.\n\nAgriStack architecture has the following foundational layers: \n-Core registries\n-Base databases\n-Farmers Database: Farmers ID linked with land records\n-Geo-referencing of plots\n-Crop Survey, Crop planning and\n-Soil Mapping, Soil Fertility\n-Unified Farmers Service Interface for state, Pvt. Players\n-Data Exchange',
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
