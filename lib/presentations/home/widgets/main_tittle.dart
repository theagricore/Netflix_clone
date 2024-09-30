import 'package:flutter/material.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/core/text_style.dart';

class MainTittleWidget extends StatelessWidget {
  const MainTittleWidget({super.key,required this.tittle});
final String tittle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        K_W_width_5,
        Text(tittle,style: Headingfont_1_3W(),),
      ],
    );
  }
}