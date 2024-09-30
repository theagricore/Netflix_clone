import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/text_style.dart';

class HotAndNewIconButton extends StatelessWidget {
  const HotAndNewIconButton({
    super.key,
    required this.icon,
    required this.name,
  });
  final IconData icon;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 45,
          color: prewhite,
        ),
        Text(
          name,
          style: font_1_1W(),
        )
      ],
    );
  }
}