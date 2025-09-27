import 'package:flutter/material.dart';
import 'package:testapp/features/womenty_screens/widget/profile_details.dart';
import 'package:testapp/features/womenty_screens/widget/profile_picture.dart';
import 'package:testapp/features/womenty_screens/widget/profile_setting.dart';

class WomenAboutScreen extends StatelessWidget {
  const WomenAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9F6F1),
        title: Text(
          "Womenself",
          style: TextStyle(
            color: Color(0xFF374C44),
            fontFamily: "Roboto",
            fontWeight: FontWeight.w500,
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            iconSize: 20,
            color: Color(0xFF374C44),
            onPressed: () {
              debugPrint("Back button pressed");
              //Navigator.pop(context);
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              debugPrint("Logout button clicked");
            },
            child: Text(
              "Logout",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFFFF2B2B),
                decoration: TextDecoration.underline,
                decorationColor: Color(0xFFFF2B2B),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF9F6F1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  children: [
                    ProfilePicture(imgPath: "assets/images/g1.jpg"),
                    SizedBox(height: 12),
                    ProfileDetails(),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ProfileSetting(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
