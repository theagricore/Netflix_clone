import 'package:flutter/material.dart';
import 'package:netflix/presentations/fast_laugh/widgets/videolist_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          scrollDirection: Axis.vertical,
          children: List.generate(10, (index) {
            return  VideoListItemWidget(index: index);
          },
          ),
        ),
      ),
    );
  }
}
