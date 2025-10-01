import 'package:flutter/material.dart';
import 'package:testapp/app_config.dart';
import 'package:testapp/features/activity_screen/presentation/screen/activity_screen.dart';
import 'package:testapp/features/activity_screen/presentation/screen/view_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ViewScreen(),
  ));
}