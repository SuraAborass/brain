import 'package:brain/Constants/colors.dart';
import 'package:flutter/material.dart';


class AppThemes {

  static final lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: BrainColors.lightWhite,
    //backgroundColor: BrainColors.lightWhite,

  );


  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    //backgroundColor: BrainColors.grey,

  );


}