import 'package:flutter/material.dart';

import 'custom_bottom_sheet.dart';

class DeleteBottomSheetDemo extends StatelessWidget {

  const DeleteBottomSheetDemo({super.key, });



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            CustomBottomSheet.show(
              context: context,
              title: "Delete Conversation",
              description: "Are you sure you want to delete this conversation?\nThis action cannot be undone.",
              confirmText: "Delete",
              imageAsset: "assets/images/delete_box.png",
              confirmColor: Colors.red,
              onConfirm: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>DeleteBottomSheetDemo()));
                print("Delete Conversation!");
              },
            );

          } ,
          child: const Text("Open Delete BottomSheet"),
        ),
      ),
    );
  }
}
