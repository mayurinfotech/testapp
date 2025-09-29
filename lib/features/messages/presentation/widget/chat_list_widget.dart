import 'package:flutter/material.dart';
import 'package:testapp/features/messages/data/chat_list_data.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChatListData> chatData = [];
    // final List<ChatListData> chatData = [
    //   ChatListData(
    //     "assets/images/g1.jpg",
    //     "Grace",
    //     "Hey! How are you doin...",
    //     "Now",
    //     1,
    //   ),
    //   ChatListData(
    //     "assets/images/g2.png",
    //     "Ethan",
    //     "What's up? Any update...",
    //     "Now",
    //     6,
    //   ),
    //   ChatListData(
    //     "assets/images/g3.png",
    //     "Oliver",
    //     "Hello! What's new with...",
    //     "Today",
    //     2,
    //   ),
    //   ChatListData("assets/images/g4.png", "Noah", "Hello!", "Now", 8),
    //   ChatListData(
    //     "assets/images/g5.png",
    //     "Isabella",
    //     "Hey there! What are you up to?",
    //     "Now",
    //     9,
    //   ),
    //   ChatListData(
    //     "assets/images/g2.png",
    //     "Ava",
    //     "Greetings! How have yo...",
    //     "Now",
    //     5,
    //   ),
    //   ChatListData(
    //     "assets/images/g1.jpg",
    //     "Liam",
    //     "Hey! Any exciting plan...",
    //     "Now",
    //     4,
    //   ),
    //   ChatListData(
    //     "assets/images/g1.jpg",
    //     "Grace",
    //     "Hey! How are you doin...",
    //     "Now",
    //     1,
    //   ),
    //   ChatListData(
    //     "assets/images/g2.png",
    //     "Ethan",
    //     "What's up? Any update...",
    //     "Now",
    //     6,
    //   ),
    //   ChatListData(
    //     "assets/images/g3.png",
    //     "Oliver",
    //     "Hello! What's new with...",
    //     "Today",
    //     2,
    //   ),
    //   ChatListData("assets/images/g4.png", "Noah", "Hello!", "Now", 8),
    //   ChatListData(
    //     "assets/images/g5.png",
    //     "Isabella",
    //     "Hey there! What are you up to?",
    //     "Now",
    //     9,
    //   ),
    //   ChatListData(
    //     "assets/images/g2.png",
    //     "Ava",
    //     "Greetings! How have yo...",
    //     "Now",
    //     5,
    //   ),
    //   ChatListData(
    //     "assets/images/g1.jpg",
    //     "Liam",
    //     "Hey! Any exciting plan...",
    //     "Now",
    //     4,
    //   ),
    // ];
    if (chatData.isEmpty) {
      return noDataForChatList();
    } else {
      return withDataForChatList(chatData: chatData);
    }
  }

  Widget withDataForChatList({required List<ChatListData> chatData}) {
    return Container(
      height: 600,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: chatData.length,
        itemBuilder: (context, index) {
          final data = chatData[index];
          return ListTile(
            dense: false,
            // visualDensity: VisualDensity(vertical: -2),
            leading: ClipOval(
              child: Image.asset(
                data.imagePath,
                height: 56,
                width: 56,
                fit: BoxFit.cover,
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  data.recentMessage,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5C7F71),
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data.timeIndicator,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF374C44),
                  ),
                ),
                SizedBox(height: 4),
                Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Color(0xFF9DB2AA),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    data.numberOfMessage.toString(),
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF374C44),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget noDataForChatList() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 110),

        Image.asset("assets/images/subtitlegif.gif", width: 180, height: 150),
        SizedBox(height: 20),
        Text(
          "You don't have any messages yet.",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF5C7F71),
          ),
        ),
        SizedBox(height: 16),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF5C7F71),
            foregroundColor: Color(0xFFFFFFFF),
          ),
          onPressed: () {
            debugPrint("Explore womenity button clicked");
          },
          child: Text(
            "Explore Womunity",
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
