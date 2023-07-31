import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_farah/presentation/base/style/resours/color_manger.dart';
import 'package:new_farah/presentation/base/style/resours/string_manger.dart';
import 'package:new_farah/presentation/base/style/resours/value_app.dart';
import '../view/screen/home_page.dart';

class SplashState extends StatefulWidget {
  const SplashState({Key? key}) : super(key: key);

  @override
  State<SplashState> createState() => _SplashStateState();
}

class _SplashStateState extends State<SplashState> {
  Timer? _timer;

  _getTimer() {
    _timer = Timer(const Duration(seconds: 5), _getNav);
  }

  _getNav() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
  }

  @override
  void initState() {
    _getTimer();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _getTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManger.teal,
        appBar:
            AppBar(backgroundColor: ColorManger.teal, elevation: AppSize.p0),
        body: ListView(
          children: const [
            Column(
              children: [
                SizedBox(height: AppSize.p240),
                Center(
                    child: Padding(
                  padding: EdgeInsets.only(right: AppSize.p25),
                  child: Text(StringManger.qur1,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: ColorManger.white,
                          fontSize: AppSize.p25,
                          fontWeight: FontWeight.bold)),
                )),
                SizedBox(
                  height: AppSize.p80,
                ),
                CircularProgressIndicator(
                  color: ColorManger.white,
                )
              ],
            )
          ],
        ));
  }
}
