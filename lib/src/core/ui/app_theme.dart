import 'package:desafio_flutter_streaming_app/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

sealed class AppTheme {
  static const _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(
      color: AppColors.colorGrey, 
      width: 1
    ),
  );

  static ThemeData themeData = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
  
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.primaryColor),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.white,
        fontFamily: AppFonts.fontPopins,
      )
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Color.fromRGBO(35, 37, 44, 1),
      labelStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400 ,color: AppColors.colorGrey),
      border: _defaultInputBorder,
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      errorBorder: _defaultInputBorder.copyWith(
        borderSide: const BorderSide(
          color: AppColors.colorRed, 
          width: 2
        ),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(
          color: AppColors.primaryColor,
          width: 1
        ),
        foregroundColor: AppColors.primaryColor,
        backgroundColor: AppColors.buttonColor,
        minimumSize: Size(208, 41.5),
        maximumSize: Size(240, 42),
        //backgroundColor: AppColors.colorGreen,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
      )
    ),
    
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: AppColors.primaryColor,
          width: 1
        ),
        foregroundColor: AppColors.buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        )
      )
    ),

    fontFamily: AppFonts.fontPopins,

  );

}
