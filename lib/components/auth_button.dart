import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.onpressed,
    required this.text,
    required this.color,
  });
  final void Function() onpressed;
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        foregroundColor: Colors.white,
      ),
      child: Text(text, style: TextStyle(fontSize: 18)),
    );
  }
}
