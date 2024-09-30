import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/bloc/downloads_bloc.dart';
import 'package:netflix/core/size.dart';
import 'package:netflix/presentations/downloads/widgets/introduction_widget.dart';
import 'package:netflix/presentations/downloads/widgets/material_button_widget.dart';
import 'package:netflix/presentations/downloads/widgets/smart_download.dart';
import 'package:netflix/presentations/widgets/app_bar.dart';
class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final List imagelist = [
    "https://image.tmdb.org/t/p/w600_and_h900_bestv2/BgcvtsVWLQfjHD6Dr3YYgeSLYk.jpg",
    "https://image.tmdb.org/t/p/w600_and_h900_bestv2/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg",
    "https://image.tmdb.org/t/p/w600_and_h900_bestv2/8cdWjvZQUExUUTzyp4t6EDMubfO.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance!.addPostFrameCallback((timestamp){
      BlocProvider.of<DownloadsBloc>(context).add(DownloadsEvent.getDownloadsImage());
    });
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          //appbar
          child: AppBarWidget(title: "Downloads"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              K_H_height_10,
              //smart downlod button
              const SmartDownloads(),
              K_H_height_30,
              //part1
              IntroductionWidget(size: size, imagelist: imagelist),
              //part2
              const MaterialButtonWidget()
            ],
          ),
        ));
  }
}
