import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({super.key, required this.icon, required this.onTap});
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
       width: 60,
       height: 60,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.grey)
        ),
        
        child:
            icon != null
                ? Icon(icon, size: 30, color: Colors.black)
                : SizedBox(),
      ),
    );
    ;
  }
}
