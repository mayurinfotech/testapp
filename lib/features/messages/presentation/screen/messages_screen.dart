import 'package:flutter/material.dart';

import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:testapp/features/messages/data/request_list_data.dart';

import 'package:testapp/features/messages/presentation/widget/chat_list_widget.dart';
import 'package:testapp/features/messages/presentation/widget/searchbar_status_widget.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<RequestListData> reqData = [
      RequestListData(
        imagePath: "assets/images/g1.jpg",
        personName: "Oliver",
        reqNote: "Sent you a message request",
      ),
      RequestListData(
        imagePath: "assets/images/g1.jpg",
        personName: "Oliver",
        reqNote: "Sent you a message request",
      ),
      RequestListData(
        imagePath: "assets/images/g1.jpg",
        personName: "Oliver",
        reqNote: "Sent you a message request",
      ),
      RequestListData(
        imagePath: "assets/images/g1.jpg",
        personName: "Oliver",
        reqNote: "Sent you a message request",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9F6F1),
        leading: Icon(LucideIcons.chevronLeft),
        title: Text(
          "Messages",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xFF374C44),
          ),
        ),
        centerTitle: true,
      ),
      //<--------------------------------- Body -------------------------->
      body: Column(
        children: [
          SearchbarStatusWidget(), SizedBox(height: 12),
          //<-------------------------Sized Box-------------->
          SizedBox(height: 20),
          //<-------------------------Sized Box-------------->
          //<------------------------Chat List--------------->
          // ChatListWidget(),

          //<------------------------Chat List--------------->
          //<------------------------Request List--------------->
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView.separated(
              itemBuilder: (context, index) {
                final data = reqData[index];
                return ListTile(
                  leading: Column(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          data.imagePath,
                          height: 56,
                          width: 56,
                        ),
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        height: 56,
                        width: 40,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0xFFFF2B2B),
                              width: 1,
                            ), // red border
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                32,
                              ), // optional rounded corners
                            ),
                            backgroundColor: const Color(
                              0xFFFFFFFF,
                            ), // red background
                          ),
                          onPressed: () {},
                          child: const Icon(
                            LucideIcons.x,
                            color: Color(0xFFFF2B2B), // white icon
                          ),
                        ),
                      ),
                    ],
                  ),

                  title: Column(
                    children: [
                      Text(
                        data.personName,
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF5C7F71),
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        data.reqNote,
                        style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF9DB2AA),
                        ),
                      ),
                      SizedBox(height: 4),
                      SizedBox(
                        width: 270,
                        height: 40,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0xFF5C7F71),
                              width: 1,
                            ), // red border
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                32,
                              ), // optional rounded corners
                            ),
                            backgroundColor: const Color(
                              0xFFFFFFFF,
                            ), // red background
                          ),
                          onPressed: () {},
                          child: const Icon(
                            LucideIcons.x,
                            color: Colors.white, // white icon
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 16);
              },
              itemCount: reqData.length,
            ),
          ),

          //<------------------------Request List--------------->
        ],
      ),
      //<--------------------------------- Body -------------------------->
    );
  }
}
