import 'package:flutter/material.dart';
import 'package:testapp/features/messages/presentation/screen/blocked_profile_page.dart';
import 'package:testapp/features/messages/presentation/screen/settings_security_page.dart';
import 'package:testapp/features/messages/presentation/widget/delete_bottom_sheet_demo.dart';
import 'features/messages/presentation/widget/custom_bottom_sheet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlockedProfilesPage(),
    );
  }
}


