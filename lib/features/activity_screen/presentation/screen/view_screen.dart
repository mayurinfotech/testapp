import 'package:flutter/material.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 383,
            width: 402,
            decoration: BoxDecoration(
              color: Color(0xFFF9F6F1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 45),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios_new_outlined),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Text(
                          "View Activity",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 20.0,
                      top: 5,
                    ),
                    child: Image.asset(
                      "assets/images/young-girls.png",
                      height: 272,
                      width: 400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Morning Yoga in the Park",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "start your weekend with a peaceful yoga session\n in the park.",
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Image.asset('assets/images/profile-image.png'),
            title: Text("Grace Williams",style: TextStyle(
              fontWeight: FontWeight.bold,

            ),),
            subtitle: Text("Organizer"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              height: 116,
              width: 363,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                border: Border.all(color: Colors.grey)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 10),
                child: Column(
                  spacing: 10,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 5,),
                        Text("Parc de Mon Repos, Lausanne,switzerland"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.access_time),
                        SizedBox(width: 5,),
                        Text("7:30 AM to 9:00 AM"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.calendar_today_outlined),
                        SizedBox(width: 5,),
                        Text("21 September 2025"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              Icon(Icons.home),
              VerticalDivider(
                color: Colors.pink,
                thickness: 20,
                width: 20,   // space around the divider
              ),
              Icon(Icons.settings),
            ],
          )

        ],
      ),
    );
  }
}
