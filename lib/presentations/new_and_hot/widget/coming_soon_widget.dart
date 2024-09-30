import 'package:flutter/material.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/core/text_style.dart';
import 'package:netflix/presentations/new_and_hot/widget/hot_and_new_button.dart';
import 'package:netflix/presentations/new_and_hot/widget/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          SizedBox(
            height: 450,
            width: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "FEB",
                  style: font_1_3W(),
                ),
                Text(
                  "11",
                  style: Headingfont_1_2W(),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width - 50,
            height: 450,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoWidget(),
                K_H_height_10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "TAll GIRL 2",
                      style: Headingfont_1_2W(),
                    ),
                    const Row(
                      children: [
                        HotAndNewIconButton(
                            icon: Icons.notifications_outlined,
                            name: "Remind Me"),
                        K_W_width_20,
                        HotAndNewIconButton(
                            icon: Icons.info_outline, name: "info"),
                        K_W_width_10,
                      ],
                    ),
                  ],
                ),
                Text(
                  "Comming on Friday",
                  style: font_1_2W(),
                ),
                K_H_height_10,
                 Text(
                      "TAll GIRL 2",
                      style: Headingfont_1_3W(),
                    ),
                    Text("Landing the lead in the school musical is a dream come true for Jodi,until the pressure sends her confidence- and her relationship-into a tailspain.",style: font_1_1W(),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

