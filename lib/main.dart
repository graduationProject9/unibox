import 'package:flutter/material.dart';
import 'package:unibox/modules/login_page/login.dart';
import 'package:unibox/provider/theme_provider.dart';

import 'modules/home_screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyThemes.LightTheme,
      darkTheme: MyThemes.darkTheme,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
