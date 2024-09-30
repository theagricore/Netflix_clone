import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/core/text_style.dart';
import 'package:netflix/presentations/home/widgets/main_big_card.dart';
import 'package:netflix/presentations/home/widgets/main_card_widget.dart';
import 'package:netflix/presentations/home/widgets/stack_main_card.dart';

const netflixImage =
    "https://upload.wikimedia.org/wikipedia/commons/f/ff/Netflix-new-icon.png";

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              if (notification.metrics.axis == Axis.vertical) {
                final ScrollDirection direction = notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollNotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollNotifier.value = true;
                }
              }
              return false;
            },
            child: Stack(
              children: [
                ListView(
                  children: const [
                    Column(
                      children: [
                        StackMainBigCard(),
                        K_H_height_10,
                        MainCardListWidget(
                            ListTittle: "Released in the past year"),
                        MainCardListWidget(ListTittle: "Trending Now"),
                        StackMainCard(
                            listTittle: "Top 10 Tv Shows In India Today"),
                        MainCardListWidget(ListTittle: "Tense Drama"),
                        MainCardListWidget(ListTittle: "South indian Cinema"),
                      ],
                    ),
                  ],
                ),
                scrollNotifier.value ? const CustomMainAppBar() : K_H_height_10,
              ],
            ),
          );
        },
      ),
    );
  }
}

class CustomMainAppBar extends StatelessWidget {
  const CustomMainAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1500),
      width: double.infinity,
      height: 120,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black,
            Colors.transparent, 
          ],
        ),
      ),
      child: Column(
        children: [
          Flexible(
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(netflixImage),
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.cast,
                  color: prewhite,
                  size: 35,
                ),
                K_W_width_20,
                Container(
                  width: 40,
                  height: 40,
                  color: Colors.blue,
                ),
                K_W_width_10,
              ],
            ),
          ),
          K_H_height_10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Tv Shows",style: font_1_2W(),),
              Text("Movies",style: font_1_2W(),),
              Row(
                children: [
                  Text("Categories",style: font_1_2W(),),
                  const Icon(Icons.arrow_drop_down,color: prewhite,size: 40,)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
