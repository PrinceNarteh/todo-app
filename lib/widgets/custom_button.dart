import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  VoidCallback onPressed;

  CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
