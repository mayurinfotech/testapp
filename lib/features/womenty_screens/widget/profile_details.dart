import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
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
    );
  }
}
