import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/presentations/downloads/screen_downloads.dart';
import 'package:netflix/presentations/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix/presentations/home/screen_home.dart';
import 'package:netflix/presentations/main_page/widgets/bottomNav.dart';
import 'package:netflix/presentations/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix/presentations/secarch/screen_search.dart';
class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});
  final  _pages= [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: ValueListenableBuilder(valueListenable: indexChangeNotifier, 
        builder: (context, index, _){
          return _pages[index];
        }),
        bottomNavigationBar: const BottomNaviagationWidget(),
        ),
    );
  }
}
