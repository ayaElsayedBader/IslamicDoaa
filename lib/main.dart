import 'package:flutter/material.dart';
import 'package:new_farah/presentation/base/splash_screen.dart';
import 'package:new_farah/presentation/base/style/resours/theme_data.dart';
import 'package:new_farah/presentation/view/screen/home_page.dart';
//     صل علي محمد
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:   SplashState(),

      theme: getTheme()

    );
  }
}
