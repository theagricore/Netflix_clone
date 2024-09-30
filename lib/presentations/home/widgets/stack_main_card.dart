import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/presentations/home/widgets/main_tittle.dart';

class StackMainCard extends StatelessWidget {
  const StackMainCard({
    super.key,
    required this.listTittle,
  });
  final String listTittle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTittleWidget(tittle: listTittle),
        LimitedBox(
          maxHeight: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => Stack(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                        width: 150,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: NetworkImage(
                                "https://image.tmdb.org/t/p/w600_and_h900_bestv2/m2zXTuNPkywdYLyWlVyJZW2QOJH.jpg"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 10,
                    bottom: 10,
                    child: BorderedText(
                      strokeWidth: 6.0,
                      strokeColor: prewhite,
                      child: Text(
                        (index + 1).toString(),
                        style: const TextStyle(
                          decoration: TextDecoration.none,
                          decorationColor: Colors.red,
                          fontSize: 150,
                          color: preblack,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
