import 'package:flutter/material.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/core/text_style.dart';
import 'package:netflix/presentations/new_and_hot/widget/hot_and_new_button.dart';
import 'package:netflix/presentations/new_and_hot/widget/video_widget.dart';

class EveryoneisWachingWidget extends StatelessWidget {
  const EveryoneisWachingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        K_H_height_10,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Friends",
                style: Headingfont_1_3W(),
              ),
              Text(
                "Landing the lead in the school musical is a dream come true for Jodi,until the pressure sends her confidence- and her relationship-into a tailspain.",
                style: font_1_1W(),
              ),
              K_H_height_20,
              VideoWidget(),
              K_H_height_10,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  HotAndNewIconButton(icon: Icons.share_rounded, name: "Share"),
                  K_W_width_10,
                  HotAndNewIconButton(icon: Icons.add, name: "My List"),
                    K_W_width_10,
                  HotAndNewIconButton(icon: Icons.play_arrow, name: "Play"),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
