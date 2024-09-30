import 'package:flutter/material.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/core/text_style.dart';
import 'package:netflix/presentations/downloads/widgets/stack_widget.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    super.key,
    required this.size,
    required this.imagelist,
  });

  final Size size;
  final List imagelist;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Introducing Downloads for you",
          style: Headingfont_1_2W(),
          textAlign: TextAlign.center,
        ),
        K_H_height_10,
        Text(
          "We'll download a personalised selection of\n movies and shows for you, so there's\n always something to watch on your \ndevice.",
          style: font_1_2W(),
          textAlign: TextAlign.center,
        ),
        StackWidget(size: size, imagelist: imagelist)
      ],
    );
  }
}
