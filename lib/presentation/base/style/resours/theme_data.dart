


import 'package:flutter/material.dart';
import 'package:new_farah/presentation/base/style/resours/value_app.dart';

ThemeData getTheme(){


   return ThemeData(
    appBarTheme: AppBarTheme(
      color: Colors.white,
      centerTitle: true,
      elevation: 0.0,
      titleTextStyle: TextStyle(
fontSize:  AppFon.fo27,
        color: Colors.black,
      ),
    )
       ,textTheme: TextTheme(
     headline1: TextStyle(  color:  Colors.white)
   )

  );

}