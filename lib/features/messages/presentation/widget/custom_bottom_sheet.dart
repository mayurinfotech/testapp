import 'package:flutter/material.dart';
import 'package:testapp/features/messages/presentation/widget/delete_bottom_sheet_demo.dart';

class CustomBottomSheet {
  static void show({
    required BuildContext context,
    required String title,
    required String description,
    required String confirmText,
    required VoidCallback onConfirm,
    String? imageAsset,
    Color confirmColor = Colors.red,
  }) {
    showModalBottomSheet(

      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (imageAsset != null) ...[
                Image.asset(imageAsset, height: 100),
                const SizedBox(height: 10),
              ],
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  // Cancel button
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFF5C7F71)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        "Cancel",
                        style: TextStyle(color: Color(0xFF5C7F71)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  // Confirm button
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: confirmColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context); // close current sheet
                        onConfirm();
                      },
                      child: Text(
                        confirmText,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }

  /// 👇 Helper method to switch to another sheet
  static void switchTo({
    required BuildContext context,
    required String title,
    required String description,
    required String confirmText,
    required VoidCallback onConfirm,
    String? imageAsset,
    Color confirmColor = Colors.red,
  }) {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>DeleteBottomSheetDemo()));
    Future.delayed(const Duration(milliseconds: 200), () {
      CustomBottomSheet.show(
        context: context,
        title: title,
        description: description,
        confirmText: confirmText,
        onConfirm: onConfirm,
        imageAsset: imageAsset,
        confirmColor: confirmColor,
      );
    });
  }
}
