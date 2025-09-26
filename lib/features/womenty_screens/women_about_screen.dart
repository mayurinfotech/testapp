import 'package:flutter/material.dart';
import 'package:testapp/features/womenty_screens/widget/profile_picture.dart';

class WomenAboutScreen extends StatelessWidget {
  const WomenAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ProfilePicture(imgPath: "assets/images/g1.jpg"),
              SizedBox(height: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Jenny Wilson",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF374C44),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "25 yrs old ",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF374C44),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "12th April 1999",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF374C44),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "jennywilson@gmail.com",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF374C44),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
