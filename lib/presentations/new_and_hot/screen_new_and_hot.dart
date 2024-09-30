import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/core/text_style.dart';
import 'package:netflix/presentations/new_and_hot/widget/coming_soon_widget.dart';
import 'package:netflix/presentations/new_and_hot/widget/everyone_is_waching.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(95),
          child: AppBar(
            backgroundColor: preblack,
            title: Text(
              "New & Hot",
              style: Headingfont_1_1W(),
            ),
            actions: [
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
              K_W_width_20,
            ],
            bottom: TabBar(
              isScrollable: true,
              unselectedLabelColor: prewhite,
              labelColor: preblack,
              labelStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              indicator: BoxDecoration(
                color: prewhite,
                borderRadius: BorderRadius.circular(30),
              ),
              indicatorPadding: EdgeInsets.zero,
              indicatorColor: Colors.black,
              dividerColor: preblack,
              labelPadding: EdgeInsets.zero,
              tabs: const [
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Tab(
                    text: "🍿Coming Soon",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Tab(
                    text: "👀Everyone's watching",
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
          _buildComingSoon(),
          _buildEveryoneIswaching(),
        ]),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
      itemBuilder: (BuildContext context, index) => const ComingSoonWidget(),
      itemCount: 10,
    );
  }

  Widget _buildEveryoneIswaching() {
    return ListView.builder(itemBuilder: (BuildContext context,index)=>const EveryoneisWachingWidget(),
    itemCount: 10,
    );
  }
}

