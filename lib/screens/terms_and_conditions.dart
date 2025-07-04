import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:workexperience/screens/dashboard.dart';
//import 'package:workexperience/screens/home.dart';
import '../screens/signup.dart';

class TCs extends StatefulWidget {
  const TCs ({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
  }


class HomeState extends State<TCs> {
  //const Home({super.key});        

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        toolbarHeight: 50,
        title: Text("Terms and conditions", 
          style: TextStyle(
            fontFamily: "Space Mission",
            fontSize: 20,
            color: const Color.fromARGB(255, 20, 9, 118)),),
        leading: TextButton(onPressed:
        (){
          Navigator.pop(
            context,
            CupertinoPageRoute(builder: (context) => Signup()));
        }, 
        child: Row(children: [
          Text(" "),
          Icon(Icons.arrow_back, color: Colors.black, size: 22,),
        ],
        )
        ),
        backgroundColor: Colors.lightBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.vertical(bottom: Radius.circular(15))
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView( 
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1,),
          Text("By creating an account, accessing, or using Great Gear, you, the user, acknowledge and expressly consent to be bound by these Terms and Conditions which govern your relationship with our platform, including but not limited to your agreement to provide truthful, accurate, current, and complete personal information at sign-up and maintain the integrity of your account credentials; your responsibility for any activity conducted under your account; your agreement not to misuse or tamper with our app’s systems, servers, or user experience in any way; your understanding that Great Gear is for personal use only and may not be leveraged for resale, redistribution, or unlawful exploitation; your acceptance of prices as displayed at the time of purchase including taxes, surcharges, and shipping fees, which are subject to change without prior notice; your agreement to remit payment via approved channels and to ensure sufficient funds and legitimacy of the transaction; your understanding that orders are conditional upon availability and successful payment clearance and may be delayed, cancelled, or adjusted under circumstances beyond our control; your responsibility for entering correct shipping details and acknowledging that missed deliveries due to inaccurate information are your responsibility; your acceptance that estimated shipping durations are not guaranteed and that delays may result from courier disruptions, customs processing, logistics issues, or adverse environmental factors; your agreement to abide by our return and refund policy which includes returning items in original, unused condition within fourteen (14) days of receipt and that refunds may take up to ten (10) business days depending on the payment method used; your understanding that customized or limited edition products may be non-returnable except in cases of verified defect; your acceptance that Great Gear holds full intellectual property rights over all visual, written, and interactive content within the app including product images, descriptions, logos, slogans, app code, and underlying data structures, and that no part of the app may be copied, transmitted, modified, or reproduced without prior written permission from us or our legal representatives; your acknowledgment that reviews, feedback, and other user-submitted materials may be stored, analyzed, and repurposed for commercial, promotional, or operational purposes with a non-exclusive, royalty-free license granted to Great Gear upon submission; your agreement not to post content that is illegal, offensive, misleading, defamatory, abusive, threatening, or fraudulent and that Great Gear retains the right to remove such content or suspend associated accounts; your consent to the collection, processing, and usage of personal information according to our Privacy Policy, which includes but is not limited to using data for analytics, fraud prevention, targeted marketing, account recovery, delivery management, and customer service enhancements; your understanding that Great Gear is not liable for app outages, data losses, or service interruptions and that such disruptions may occur due to technical maintenance, third-party hosting issues, or cyber-security threats; your recognition that these Terms and Conditions may be updated at any time, with or without explicit notice, and that continued use of the app signifies your acceptance of any amended terms; your agreement that violations of these terms may result in warnings, penalties, temporary suspension, or permanent termination of your account, and loss of access to features or pending purchases without obligation of reimbursement unless legally mandated; your acknowledgment that all legal disputes related to the use of Great Gear shall be governed by the laws of [your local jurisdiction], and must be filed within one year of the triggering event through the appropriate venue outlined in our dispute resolution clause; and finally, your understanding that by clicking “Sign Up” or using any part of the Great Gear app, you have read, understood, and voluntarily agreed to all of the above terms in full.",
          textAlign: TextAlign.justify,),
          
          
          SizedBox(height: 50,),
          ElevatedButton(onPressed:() async {
            setState(() {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You have agreed you've read the terms and condition", style: TextStyle(fontFamily: "Roboto",fontSize: 25,),), backgroundColor: Colors.black,duration: Duration(seconds: 4),));
            });
            await Future.delayed(const Duration(seconds: 3));
            Navigator.pop(
                  context,
                  CupertinoPageRoute(builder: (context) => Signup())
              );
          }, 
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(225, 20, 9, 118),
              foregroundColor: Colors.black,
              fixedSize: Size.fromWidth(500),
            ),
            child: Text(" Agree to terms and conditions", 
              style: TextStyle(
              fontFamily: "Space Mission", 
              fontSize: 40, 
              color: Colors.blue, 
              
            ),
            textAlign: TextAlign.center,
            ),
          ),
        ],
        ),
        ),
      
      ),
      
    );
  }
}