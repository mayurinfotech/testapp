import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key, required this.imgPath});
  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: 110,

      child: Stack(
        children: [
          ClipOval(
            child: Image.asset(
              imgPath,
              fit: BoxFit.cover,
              height: 100,
              width: 100,
              alignment: Alignment.center,
            ),
          ),
          Positioned(
            bottom: 5,
            right: 10,
            child: GestureDetector(
              onTap: () {
                debugPrint("edit profile pic clicked");
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  shape: BoxShape.circle,
                ),
                child: Icon(LucideIcons.pencil100, size: 19),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
