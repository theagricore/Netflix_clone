import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/core/text_style.dart';

const imageurl =
    "https://image.tmdb.org/t/p/w600_and_h900_bestv2/BgcvtsVWLQfjHD6Dr3YYgeSLYk.jpg";

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Top Searches",
          style: font_1_4W(),
        ),
        K_H_height_10,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => const TopSeacrchItemTile(),
              separatorBuilder: (ctx, index) => K_H_height_10,
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSeacrchItemTile extends StatelessWidget {
  const TopSeacrchItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwith = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenwith * 0.36,
          height: 80,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageurl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        K_W_width_10,
        Expanded(
          child: Text(
            "Movie Name",
            style: font_1_2W(),
          ),
        ),
        const CircleAvatar(
          backgroundColor: prewhite,
          radius: 25,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: preblack,
            child: Padding(
              padding: EdgeInsets.only(left: 5,bottom: 1),
              child: Icon(CupertinoIcons.play_fill,color: prewhite,),
            ),
          ),
        )
      ],
    );
  }
}
