import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/core/text_style.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.settings,
          size: 35,
          color: prewhite,
        ),
        K_W_width_5,
        Text(
          "Smart Downloads",
          style: Headingfont_1_4W(),
        ),
      ],
    );
  }
}