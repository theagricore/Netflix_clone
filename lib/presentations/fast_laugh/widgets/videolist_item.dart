import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/core/text_style.dart';
const imageurl =
    "https://image.tmdb.org/t/p/w600_and_h900_bestv2/BgcvtsVWLQfjHD6Dr3YYgeSLYk.jpg";

class VideoListItemWidget extends StatelessWidget {
  final int index;
  const VideoListItemWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 33,
                  backgroundColor: preblack.withOpacity(0.2),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.volume_off_outlined,
                      color: prewhite,
                      size: 35,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          bottom: 25,
          right: 22,
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(imageurl),
              ),
              VideoActionsWidgets(fixicon: Icons.emoji_emotions, tiile: "LOL"),
              VideoActionsWidgets(fixicon: Icons.add, tiile: "My List"),
              VideoActionsWidgets(fixicon: Icons.share, tiile: "Share"),
              VideoActionsWidgets(fixicon: Icons.play_arrow, tiile: "Play"),
            ],
          ),
        )
      ],
    );
  }
}

class VideoActionsWidgets extends StatelessWidget {
  const VideoActionsWidgets(
      {super.key, required this.fixicon, required this.tiile});
  final IconData fixicon;
  final String tiile;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        K_H_height_20,
        Icon(fixicon,color: prewhite,size: 40,),
        Text(tiile,style: font_1_1W(),),
      ],
    );
  }
}
