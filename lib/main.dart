import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; 
import 'package:netflix/application/bloc/downloads_bloc.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/domain/core/di/injectable.dart';
import 'package:netflix/presentations/main_page/screen_main_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (ctx) => getIt<DownloadsBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Netflix',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: backgroundColor,
        ),
        home: ScreenMainPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
