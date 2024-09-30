import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/presentations/downloads/widgets/download_image_widget.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({
    super.key,
    required this.size,
    required this.imagelist,
  });

  final Size size;
  final List imagelist;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.width,
      child: Center(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CircleAvatar(
              backgroundColor: pregrey,
              radius: size.width * 0.40,
            ),
            DownloadsImageWidget(
              imagelist: imagelist[0],
              margin: const EdgeInsets.only(left: 140, bottom: 50),
              size: Size(size.width * 0.4, size.width * 0.58),
              angle: 23,
            ),
            DownloadsImageWidget(
              imagelist: imagelist[1],
              margin: const EdgeInsets.only(right: 140, bottom: 50),
              size: Size(size.width * 0.4, size.width * 0.58),
              angle: -23,
            ),
            DownloadsImageWidget(
              imagelist: imagelist[2],
              margin: const EdgeInsets.only( bottom: 17),
              size: Size(size.width * 0.45, size.width * 0.68),
            ),
          ],
        ),
      ),
    );
  }
}