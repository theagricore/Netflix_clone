import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';

class IconButtonwidget extends StatelessWidget {
  const IconButtonwidget({super.key, required this.icon, required this.tittle});
  final IconData icon;
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: prewhite,
          size: 33,
        ),
        Text(
          tittle,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: prewhite),
        ),
      ],
    );
  }
}
