// ignore_for_file: prefer_const_constructors

import 'package:agriaid_india/SchemeApplicationForm.dart';
import 'package:flutter/material.dart';

class CentralSectorScheme extends StatefulWidget {
  @override
  State<CentralSectorScheme> createState() => _CentralSectorSchemeState();
}

class _CentralSectorSchemeState extends State<CentralSectorScheme> {
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

        title: 
            Text(
              'Central Sector Schemes',
              style: TextStyle(fontSize: 18,color: Colors.white),
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
