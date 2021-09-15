import 'package:flutter/material.dart';
import 'package:sound/app/Auth/sign-up/view/select_music_screen.dart';
import 'package:sound/app/Editor/view/editor_screen.dart';
import 'package:sound/app/app_screen.dart';

import 'theme.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getTheme(context),
      home: AppScreen(),
    );
  }
}
