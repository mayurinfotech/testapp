import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testapp/core/controller/translation_keys.dart';

class LangScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  // final ChangeLanguageController _controller =
  //     Get.find<ChangeLanguageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(TranslationKeys.langCheck.tr)),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Text(
                TranslationKeys.langCheck.tr,
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text("English"),
              onTap: () => Get.updateLocale(const Locale("en")),
            ),
            ListTile(
              title: const Text("हिन्दी (Hindi)"),
              onTap: () => Get.updateLocale(const Locale("hi")),
            ),
            ListTile(
              title: const Text("मराठी (Marathi)"),
              onTap: () => Get.updateLocale(const Locale("mr")),
            ),
            ListTile(
              title: const Text("Español (Spanish)"),
              onTap: () => Get.updateLocale(const Locale("es")),
            ),
            ListTile(
              title: const Text("中文 (Chinese)"),
              onTap: () => Get.updateLocale(const Locale("zh")),
            ),
            ListTile(
              title: const Text("العربية (Arabic)"),
              onTap: () => Get.updateLocale(const Locale("ar")),
            ),
          ],
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(TranslationKeys.helloWorld.tr),
            const SizedBox(height: 10),
            Text(TranslationKeys.goodMorning.tr),
            const SizedBox(height: 10),
            Text(
              "${TranslationKeys.requierdFeild.tr} ${TranslationKeys.emaiValidationMessage.tr}",
            ),
            const SizedBox(height: 10),
            Text(
              "${TranslationKeys.requierdFeild.tr} ${TranslationKeys.passwordValidationMessage.tr}",
            ),
            const SizedBox(height: 10),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: TranslationKeys.emaiValidationMessage.tr,
                    ),
                    validator: (value) => Validator.customValidator(
                      value,
                      fieldName: TranslationKeys.emaiValidationMessage.tr,
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Form valid hai
                        print("Validation Success ✅");
                      } else {
                        print("Validation Failed ❌");
                      }
                    },
                    child: Text("Submit"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Validator {
  const Validator._();

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    value = value.trim();
    if (value.length < 6) {
      return 'Email too short';
    }
    if (!value.isEmail) {
      return 'Enter a valid email address';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Password is required';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }

    // At least 1 uppercase
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'Password must contain at least one uppercase letter';
    }

    // At least 1 lowercase
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'Password must contain at least one lowercase letter';
    }

    // At least 1 digit
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return 'Password must contain at least one number';
    }

    // At least 1 special character
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return 'Password must contain at least one special character';
    }

    return null;
  }
  // "$fieldName ${TranslationKeys.emaiValidationMessage.tr}"

  static String? customValidator(
    String? value, {
    required String fieldName,
    bool shouldTrim = true,
    int minLimit = 0,
  }) {
    if (shouldTrim) {
      if (value == null || value.trim().isEmpty) {
        return "$fieldName ${TranslationKeys.requierdFeild.tr}";
      }

      if (value.trim().length < minLimit) {
        return "$fieldName must be at least $minLimit characters";
      }
    } else {
      if (value == null || value.isEmpty) {
        return "mewo";
      }

      if (value.length < minLimit) {
        return "$fieldName must be at least $minLimit characters";
      }
    }

    return null;
  }
}
