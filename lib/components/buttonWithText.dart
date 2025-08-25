import 'package:flutter/material.dart';

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({super.key, required this.color, required this.icon, required this.label });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,color: color,),
        Padding(padding: EdgeInsets.only(top: 0), 
        child: Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: color
          ),
        ),
        
        ),
      ],
    );
  }
}