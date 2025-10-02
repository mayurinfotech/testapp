import 'package:flutter/material.dart';
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
      home: const BottomSheetDemo(),
    );
  }
}

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            CustomBottomSheet.show(
              context: context,
              imageAsset: "assets/images/delete_box.png",
              title: "Delete Conversation",
              description:
              "Are you sure you want to delete this conversation?\nThis action cannot be undone.",
              confirmText: "Delete",
              confirmColor: Colors.red,
              onConfirm: () {
                // Instead of action, switch to Block Profile sheet
                CustomBottomSheet.switchTo(
                  context: context,
                  imageAsset: "assets/images/block_warning.png",
                  title: "Block Profile",
                  description:
                  "The user will no longer be able to view your profile, send you messages, or interact with your activities.",
                  confirmText: "Block",
                  confirmColor: Colors.red,
                  onConfirm: () {
                    print("✅ Profile Blocked");
                  },
                );
              },
            );
          },
          child: const Text("Open Delete BottomSheet"),
        ),
      ),
    );
  }
}
