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
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      textColor: Colors.white,
      child: Text(label),
    );
  }
}
