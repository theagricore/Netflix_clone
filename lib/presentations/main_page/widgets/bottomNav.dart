import 'package:flutter/material.dart';
import 'package:netflix/core/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNaviagationWidget extends StatelessWidget {
  const BottomNaviagationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: newIndex,
            onTap: (index){
              indexChangeNotifier.value= index;
            },
            backgroundColor: preblack,
            selectedItemColor: prewhite,
            unselectedItemColor: pregrey,
            selectedIconTheme: const IconThemeData(color: prewhite),
            unselectedIconTheme: const IconThemeData(color: pregrey),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.collections), label: "New & Hot"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions), label: "Fast Laughs"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: "Download"),
            ]);
      },
    );
  }
}
