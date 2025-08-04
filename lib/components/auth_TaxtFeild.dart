import 'package:flutter/material.dart';

class Authtaxtfeild extends StatelessWidget {
  Authtaxtfeild({
    super.key,
    required this.controller,
    required this.hint,
    required this.validator,
    required this.label,
    this.ispass = false,
    required this.color,
  });
  TextEditingController controller;
  String hint;
  FormFieldValidator<String>? validator;
  String label;
  bool ispass;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TextStyle(color: Colors.grey)),
          SizedBox(height: 5),
          TextFormField(
            controller: controller,
            validator: validator,
            obscureText: ispass,
            decoration: InputDecoration(
              hintText: hint,

              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey, width: 1),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.grey, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: color, width: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
