import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(102, 33, 149, 243),
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
      //--------------------------------------- Body ---------------------------------------------------------
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(119, 33, 149, 243),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                          color: Color(0xFFCED9D4),
                          width: 1,
                        ),
                      ),
                      prefixIcon: Icon(LucideIcons.search),
                      hintText: "Search for profile",
                      hintStyle: TextStyle(
                        color: Color(0xFF9DB2AA),
                        fontFamily: "Roboto",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
