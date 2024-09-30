import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/core/text_style.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key,required this.title});
 final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        K_W_width_10,
        Text(title,style: Headingfont_1_1W(),),
        const Spacer(),
        const Icon(Icons.cast,color: prewhite,size:35 ,),
        K_W_width_20,
        Container(
          width: 40,
          height: 40,
          color: Colors.blue,
        ),
        K_W_width_20
      ],
    );
  }
}