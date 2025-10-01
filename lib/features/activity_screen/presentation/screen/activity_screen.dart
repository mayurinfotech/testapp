import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 343,
            width: 415,
            decoration: BoxDecoration(
              color: Colors.grey.shade200, //Color(0xFFF9F6F1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                AppBar(
                  backgroundColor:Color(0xFFF9F6F1),
                  title: Center(child: Text("Activity Screen")),
                ),
                Container(
                  color: Color(0xFFF9F6F1),
                  child: DottedBorder(
                    options: RectDottedBorderOptions(
                      dashPattern: [10, 5],
                      strokeWidth: 3,
                      padding: EdgeInsets.only(
                        top: 50,
                        left: 100,
                        right: 120,
                        bottom: 40,
                      ),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/camera_icon.png',
                          height: 94,
                          width: 94,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Upload Image",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 15),
          TextfieldWidget(title: "Category", hintText: "Select category",icon: Icon(Icons.keyboard_arrow_down_sharp),),
          SizedBox(height: 10),
          TextfieldWidget(title: "Title", hintText: "Enter activity title",),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Description",
                border: OutlineInputBorder(),
                suffixText: "0/500"
              ),
            ),
          ),
          SizedBox(height: 10,),
          TextfieldWidget(title: "Date", hintText: "DD/MM/YYYY",icon: Icon(Icons.calendar_month),),
          SizedBox(height: 10,),
          TextfieldWidget(title: "Start Time", hintText: "Select start time", icon:Icon(Icons.access_time_filled),),
          SizedBox(height: 10,),
          TextfieldWidget(title: "End Time", hintText: "Select end time", icon:Icon(Icons.access_time_filled),),
          SizedBox(height: 10,),
          TextfieldWidget(title: "Location",hintText: "Enter location for activity",),
          SizedBox(height: 10,),
          TextfieldWidget(title: "Target Audience",hintText: "Select target audience",icon: Icon(Icons.keyboard_arrow_down_sharp),),
          SizedBox(height: 10,),
          TextfieldWidget(title: "Visibility",hintText: "Enter visibility radius (0-50 km)",icon: Icon(Icons.keyboard_arrow_down_sharp),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border:Border.all(color: Color(0xFF9DB2AA),)
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Children allowed",style: TextStyle(color: Colors.black),),
                  ),
                  Switch(
                    value: isOn,
                    activeColor: Colors.green,
                    inactiveThumbColor: Color(0xFF9DB2AA),
                    onChanged: (value) {
                      setState(() {
                        isOn = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
              )
            ],
          )
        ],
      ),
    );
  }
}

class TextfieldWidget extends StatelessWidget {
  final String? title;
  final String? hintText;
  final Icon? icon;
  TextfieldWidget({super.key,  this.title,  this.hintText, this.icon,  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xFF9DB2AA), // border color when not focused
              width: 2,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: hintText,
          labelText: title,
          border: const OutlineInputBorder(),
          suffixIcon: icon,
        ),
      ),
    );
  }
}
