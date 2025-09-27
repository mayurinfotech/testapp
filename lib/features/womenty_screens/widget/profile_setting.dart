import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:testapp/features/womenty_screens/data/setting_item.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    List<SettingItem> items = [
      SettingItem(
        leadingIcon: Icon(LucideIcons.ticketCheck),
        title: "My pass plus",
        trailingIcon: LucideIcons.chevronRight,
        onTap: () {
          debugPrint('My pass plus clicked');
        },
      ),
      SettingItem(
        leadingIcon: Icon(LucideIcons.userRound),
        title: "My identity ",
        trailingIcon: LucideIcons.chevronRight,
        onTap: () {
          debugPrint('My identity clicked');
        },
      ),
      SettingItem(
        leadingIcon: Icon(LucideIcons.clipboardList),
        title: "My preferences & intentions",
        trailingIcon: LucideIcons.chevronRight,
        onTap: () {
          debugPrint('My preferences & intentions clicked');
        },
      ),
      SettingItem(
        leadingIcon: Icon(LucideIcons.handHeart),
        title: "What's new on womaty",
        trailingIcon: LucideIcons.chevronRight,
        onTap: () {
          debugPrint("What's new on womaty clicked");
        },
      ),
      SettingItem(
        leadingIcon: Icon(LucideIcons.squareChartGantt),
        title: "My activity",
        trailingIcon: LucideIcons.chevronRight,
        onTap: () {
          debugPrint('My activity clicked');
        },
      ),
      SettingItem(
        leadingIcon: Icon(LucideIcons.settings),
        title: "Settings & Security",
        trailingIcon: LucideIcons.chevronRight,
        onTap: () {
          debugPrint('Settings & Security clicked');
        },
      ),
      SettingItem(
        leadingIcon: Icon(LucideIcons.lockKeyhole),
        title: "Privacy Center (GDPR)",
        trailingIcon: LucideIcons.chevronRight,
        onTap: () {
          debugPrint('Privacy Center (GDPR) clicked');
        },
      ),
      SettingItem(
        leadingIcon: Icon(LucideIcons.logOut, color: Color(0xFFFF2B2B)),
        title: "Deactivation/Deletion ",
        trailingIcon: LucideIcons.chevronRight,
        onTap: () {
          debugPrint('Deactivation/Deletion clicked');
        },
      ),
    ];
    return Container(
      width: 362,
      height: 452,

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xFF9DB2AA)),
      ),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,

        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            // tileColor: Colors.blue,
            onTap: item.onTap,
            dense: true,
            visualDensity: const VisualDensity(vertical: 2),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            minVerticalPadding: 0,
            leading: item.leadingIcon,
            title: Text(
              item.title,
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 16,
                color: index == items.length - 1
                    ? Color(0xFFFF2B2B)
                    : Color(0xFF374C44),
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Icon(item.trailingIcon),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 1,
            height: 0,
            color: Color(0xFF9DB2AA),
          );
        },
      ),
    );
  }
}
