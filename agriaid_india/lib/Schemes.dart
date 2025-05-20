// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:agriaid_india/SchemeApplicationForm.dart';
import 'package:flutter/material.dart';

class Schemes extends StatefulWidget {
  @override
  State<Schemes> createState() => _SchemesState();
}

class _SchemesState extends State<Schemes> {
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
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pradhan Mantri Kisan Samman Nidhi (PM-KISAN)',
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
                        'Pradhan Mantri Kisan Samman Nidhi (PM-KISAN)',
                        'PM-KISAN is a central sector scheme launched on 24th February 2019 to supplement financial needs of land holding farmers, subject to exclusions.\nUnder the scheme, financial benefit of Rs. 6000/- per year is transferred in three equal four-monthly installments into the bank accounts of farmers’ families across the country, through Direct Benefit Transfer (DBT) mode.\nTill now, Rs.2.81 lakh crores have been transferred through Direct Benefit Transfer (DBT) to more than 11 crores beneficiaries (Farmers) through various instalments',
                        '10 May - 20 Aug 2024',
                        [
                          'Aadhaar Card',
                          'Land Ownership Documents',
                          'Bank Account Details',
                          'Self-Declaration Form'
                        ],
                        ['27 States/Union Territories'],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5),
                               // Rounded corners
                        ),
                      ),
                      child: Text('More',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500,color: Colors.white),),
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
                      'Pradhan Mantri Kisan MaanDhan Yojana (PM-KMY)',
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
                        'Pradhan Mantri Kisan MaanDhan Yojana (PM-KMY)',
                        'Pradhan Mantri Kisan Maandhan Yojna (PMKMY) is a central sector scheme launched on 12th September 2019 to provide security to the most vulnerable farmer families.\n PM-KMY is contributory scheme, small and marginal farmers (SMFs), subject to exclusion criteria, can opt to become member of the scheme by paying monthly subscription to the Pension Fund. Similar, amount will be contributed by the Central Government.\nThe applicants between the age group of 18 to 40 years will have to contribute between Rs. 55 to Rs. 200 per month till they attain the age of 60. PMKMY is taking care of the farmers during their old age and provides Rs. 3,000 monthly pension to the enrolled farmers once they attain 60 years of age, subject to exclusion criteria.\nLife Insurance Corporation (LIC) is pension fund manager and registration of beneficiaries is done through CSC and State Govts.\nSo far 23.38 lakh farmers have enrolled under the scheme.',
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
                          borderRadius:
                              BorderRadius.circular(5),
                               // Rounded corners
                        ),
                      ),
                      child: Text('More',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500,color: Colors.white),),
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
                      'Pradhan Mantri Fasal Bima Yojana (PMFBY)',
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
                        'Pradhan Mantri Fasal Bima Yojana (PMFBY)',
                        'PMFBY was launched in 2016 in order to provide a simple and affordable crop insurance product to ensure comprehensive risk cover for crops to farmers against all non-preventable natural risks from pre-sowing to post-harvest and to provide adequate claim amount. The scheme is demand driven and available for all farmers A total of 5549.40 lakh farmer applications were insured under the \nscheme since 2016-17 and Rs 150589.10 crore has been paid as claim.',
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
                          borderRadius:
                              BorderRadius.circular(5),
                               // Rounded corners
                        ),
                      ),
                      child: Text('More',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500,color: Colors.white),),
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
                      'Modified Interest Subvention Scheme (MISS)',
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
                        'Modified Interest Subvention Scheme (MISS)',
                        'The Interest Subvention Scheme (ISS) provides concessional short term agri-loans to the farmers practicing crop husbandry and other allied activities like animal husbandry, dairying and fisheries. ISS is available to farmers availing short term crop loans up to\nRs.3.00 lakh at an interest rate of 7% per annum for one year. Additional 3% subvention is also given to the farmers for prompt and\ntimely repayment of loans thus reducing the effective rate of interest to 4% per annum. The benefit of ISS is also available for post-harvest loans against Negotiable Warehouse Receipts (NWRs) on crop loans for a further period of six months post-harvest to small and marginal farmers having Kisan Credit Cards (KCCs), on occurrence of natural calamities and severe natural calamities. As on 05-01-2024, 465.42\nlakh new KCC applications have been sanctioned with a sanctioned credit limit of Rs. 5,69,974 crore as part of the drive.5.Agriculture Infrastructure Fund (AIF)In order to addr',
                        '13 May - 20 Aug 2024',
                        [
                          'Aadhaar Card',
                          'Bank Account Details',
                          'Loan Documents',
                          'Income Proof',
                          'Business or Project Details'
                        ],
                        ['27 States/Union Territories'],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Background color
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5),
                               // Rounded corners
                        ),
                      ),
                      child: Text('More',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500,color: Colors.white),),
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
                      'Agriculture Infrastructure Fund (AIF)',
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
                        'Agriculture Infrastructure Fund (AIF)',
                        'In order to address the existing infrastructure gaps and mobilize investment in agriculture infrastructure, Agri Infra Fund was launched under Aatmanirbhar Bharat Package. AIF was introduced with a vision to transform the agriculture infrastructure landscape of the country. The Agriculture Infrastructure Fund is a medium - long term debt financing facility for investment in viable projects for post- harvest management infrastructure and community farming assets through interest subvention and credit guarantee support. The Fund of Rs. 1 lakh crore under the scheme will be disbursed from FY 2020-21 to FY2025-26 and the support under the scheme will be provided for the duration of FY2020-21 to FY2032-33.\n\nUnder the scheme, Rs. 1 Lakh Crore will be provided by banks and financial institutions as loans with interest subvention of 3% per annum and credit guarantee coverage under CGTMSE for loans up to Rs. 2 Crores. Further, each entity is eligible to get the benefit of the scheme for up to 25 projects located in different LGD codes.\n\nEligible beneficiaries include Farmers, Agri-entrepreneurs, Start-ups, Primary Agricultural Credit Societies (PACS), Marketing Cooperative Societies, Farmer Producers Organizations(FPOs), Self Help Group (SHG), Joint Liability Groups (JLG), Multipurpose Cooperative Societies, Central/State agency or Local Body sponsored Public Private Partnership Projects, State Agencies, Agricultural Produce Market Committees (Mandis), National & State Federations of Cooperatives, Federations of FPOs (Farmer Produce Organizations) and Federations of Self Help Groups (SHGs).\n\nAs on 31-12-2023, Rs.33.209 Crores have been sanctioned for 44,912 projects under AIF, out of this total sanctioned amount, Rs 25,504 Crores is covered under scheme benefits. These sanctioned projects have mobilized an investment of Rs 56.471 Crores in agriculture sector.',
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
                          borderRadius:
                              BorderRadius.circular(5),
                               // Rounded corners
                        ),
                      ),
                      child: Text('More',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500,color: Colors.white),),
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
                      'Namo Drone Didi',
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
                        'Namo Drone Didi',
                        'The Government has recently approved a Central Sector Scheme for\n\nproviding drones to the Women Self Help Group (SHGs) for the',
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
                          borderRadius:
                              BorderRadius.circular(5),
                               // Rounded corners
                        ),
                      ),
                      child: Text('More',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w500,color: Colors.white),),
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
