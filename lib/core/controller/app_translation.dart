import 'package:get/get_navigation/get_navigation.dart';
import 'package:testapp/core/controller/ar.dart';
import 'package:testapp/core/controller/en.dart';
import 'package:testapp/core/controller/es.dart';
import 'package:testapp/core/controller/hi.dart';
import 'package:testapp/core/controller/mr.dart';
import 'package:testapp/core/controller/zh.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "en": en,
    "hi": hi,
    "mr": mr,
    "es": es,
    "zh": zh,
    "ar": ar,
  };
}
