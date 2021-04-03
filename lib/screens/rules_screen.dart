import 'package:flutter/material.dart';

class RuleScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Rules & Regulations'),
          backgroundColor: Color(0xffbba384),
          centerTitle: true,
          ),
        body: SafeArea(
                  child: Center(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children:[
                  Text('1. Maximum number of guests allowed in all marriage gatherings shall not be more than 50',style: TextStyle(fontSize: 20),),
                  SizedBox(height:5),
                  Divider(color: Colors.black),
                  Text('2. Inter-district movement of guests is prohibited',style: TextStyle(fontSize: 20),),
                  SizedBox(height:5),
                  Divider(color: Colors.black),
                  Text('3. No person(s) from Red zone (Hotspots) will be allowed to enter the district without obtaining formal permission of the DM and Collector of the concerned district',style: TextStyle(fontSize: 20),),
                  SizedBox(height:5),
                  Divider(color: Colors.black),
                  Text('4. Disinfectant Certificate from the proprietor of the concerned Marriage Community hall must be obtained',style: TextStyle(fontSize: 20),),
                  SizedBox(height:5),
                  Divider(color: Colors.black),
                  Text('5. In case of marriages being solemnised in the applicants\' residence, sanitization of the entire house, common facilities and all points which come into human contact should be done',style: TextStyle(fontSize: 20),),
                  SizedBox(height:5),
                  Divider(color: Colors.black),
                  Text('6. Only 5 LMVs are permitted for each applicant for a maximum period of 2 days only',style: TextStyle(fontSize: 20),),
                  SizedBox(height:5),
                  Divider(color: Colors.black),
                  Text('7. Light Motor Vehicles (LMV) are permitted to have maximum 2 passengers beside the vehicle driver; for 2 wheelers, pillion rider is not allowed',style: TextStyle(fontSize: 20),),
                  SizedBox(height:5),
                  Divider(color: Colors.black),
                  Text('8. Wearing of face cover is compulsory in all public places including marriage halls',style: TextStyle(fontSize: 20),),
                  SizedBox(height:5),
                  Divider(color: Colors.black),
                  Text('9. Provision for hand wash, sanitizer to be made available at the entry & exit points and common areas of the marriage hall',style: TextStyle(fontSize: 20),),
                  SizedBox(height:5),
                  Divider(color: Colors.black),
                  Text('10. The movement of individuals, for all non essential activities, shall remain strictly prohibited between 7pm to 7am',style: TextStyle(fontSize: 20),),
                  SizedBox(height:10),
                  Divider(color: Colors.black),
                  Text('* Any person violating these safety measures will be liable to be proceeded against as per the provision of Section 51 to 60 of the Disaster Management Act, 2005 besides legal action under Section 188 of the IPC and other legal provisions as applicable *',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  SizedBox(height:10),
                  Divider(color: Colors.black),
              ]
            ),
          ),
        ),
      );
  }
}