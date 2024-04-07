import 'package:flutter/material.dart';
import 'package:todo_app/widgets/custom_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: 130,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add A New Task...'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  onPressed: onCancel,
                  label: "Cancel",
                ),
                const SizedBox(width: 10),
                CustomButton(
                  onPressed: onSave,
                  label: "Save",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
