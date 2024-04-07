import 'package:flutter/material.dart';
import 'package:todo_app/widgets/custom_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  const DialogBox({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Add A New Task...'),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  onPressed: () {},
                  label: "Cancel",
                ),
                const SizedBox(width: 10),
                CustomButton(
                  onPressed: () {},
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
