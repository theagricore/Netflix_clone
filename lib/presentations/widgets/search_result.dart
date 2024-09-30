import 'package:flutter/cupertino.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/core/text_style.dart';

const imageurl =
    "https://image.tmdb.org/t/p/w600_and_h900_bestv2/BgcvtsVWLQfjHD6Dr3YYgeSLYk.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Movies & Tv",
          style: font_1_4W(),
        ),
        K_H_height_10,
        Expanded(
          child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1/1.4,
              children: List.generate(20, (index) {
                return const MainCard();
              })),
        ),
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(imageurl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),   
    );
  }
}
