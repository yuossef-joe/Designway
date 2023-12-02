import 'package:designway/presentaion/Resourses/Colors_Managment.dart';
import 'package:flutter/material.dart';

import 'Values_Managment.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    // main colors
    splashColor: ColorMangment.splash,
    hintColor: ColorMangment.textcolor,

    //card view theme
    cardTheme: CardTheme(
      color: ColorMangment.iconscolor,
      elevation: Appsize.s4,
    ),

    //appbar theme
    appBarTheme: AppBarTheme(),


    //button theme



    //input decoration theme
  );
}