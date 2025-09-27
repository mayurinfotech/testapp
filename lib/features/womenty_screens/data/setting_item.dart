import 'package:flutter/material.dart';

class SettingItem {
  final Icon leadingIcon;
  final String title;
  final IconData trailingIcon;
  void Function() onTap;

  SettingItem({
    required this.leadingIcon,
    required this.title,
    required this.trailingIcon,
    required this.onTap,
  });
}
