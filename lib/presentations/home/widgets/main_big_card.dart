import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/text_style.dart';
import 'package:netflix/presentations/home/widgets/icon_widget.dart';

class StackMainBigCard extends StatelessWidget {
  const StackMainBigCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://image.tmdb.org/t/p/w600_and_h900_bestv2/gKkl37BQuKTanygYQG1pyYgLVgf.jpg"),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const IconButtonwidget(icon: Icons.add, tittle: "My List"),
                _PlayButton(),
                const IconButtonwidget(
                    icon: Icons.info_outline, tittle: "Info"),
              ],
            ),
          ),
        )
      ],
    );
  }
   // ignore: non_constant_identifier_names
   TextButton _PlayButton() {
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(prewhite),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        size: 30,
        color: preblack,
      ),
      label: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Text(
          "Play",
          style: font_1_2B(),
        ),
      ),
    );
  }
}
