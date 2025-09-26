import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:testapp/core/controller/app_translation.dart';
import 'package:testapp/features/test/counter_page.dart';
import 'package:testapp/features/test/lang_screen.dart';
import 'package:testapp/features/womenty_screens/women_about_screen.dart';

// class AppConfig {
//   AppConfig._();
//   static setup() {
//     CounterApp();
//   }
// }

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppTranslation(),
      locale: const Locale('en', 'US'), // Default locale
      fallbackLocale: const Locale('en', 'US'),
      home: WomenAboutScreen(),
    );
  }
}
