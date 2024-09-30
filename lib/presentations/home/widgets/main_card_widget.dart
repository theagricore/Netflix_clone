import 'package:flutter/material.dart';
import 'package:netflix/presentations/home/widgets/main_tittle.dart';

class MainCardListWidget extends StatelessWidget {
  const MainCardListWidget({
    // ignore: non_constant_identifier_names
    super.key,required this.ListTittle
  });
  // ignore: non_constant_identifier_names
  final String ListTittle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTittleWidget(tittle: ListTittle),
        LimitedBox(
          maxHeight: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              10,
              (index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
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
              ),
            ),
          ),
        )
      ],
    );
  }
}
