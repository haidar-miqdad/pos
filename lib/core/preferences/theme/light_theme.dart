import 'package:flutter/material.dart';
import 'package:pos/core/core.dart';

class LightTheme {
  final Color primaryColor;

  LightTheme(this.primaryColor);

  final Color errorColor = AppColors.red;
  final Color scaffoldColor = AppColors.white;
  final Color textSolidColor = AppColors.black;
  final Color borderColor = AppColors.white[500]!;
  final Color disabledColor = AppColors.black[200]!;

  TextTheme get textTheme {
    return TextTheme(
      headlineLarge: TextStyle(
          fontSize: Dimens.dp32,
          fontWeight: FontWeight.bold,
          color: textSolidColor),
      headlineMedium: TextStyle(
          fontSize: Dimens.dp24,
          fontWeight: FontWeight.w600,
          color: textSolidColor),
      headlineSmall: TextStyle(
          fontSize: Dimens.dp20,
          fontWeight: FontWeight.w600,
          color: textSolidColor),
      titleLarge: TextStyle(
          fontSize: Dimens.dp18,
          fontWeight: FontWeight.w600,
          color: textSolidColor),
      titleMedium: TextStyle(
          fontSize: Dimens.dp16,
          fontWeight: FontWeight.w600,
          color: textSolidColor),
      bodyLarge: TextStyle(
          fontSize: Dimens.dp16,
          fontWeight: FontWeight.w600,
          color: textSolidColor),
      bodyMedium: TextStyle(
          fontSize: Dimens.dp14,
          fontWeight: FontWeight.normal,
          color: textSolidColor),
      labelMedium: TextStyle(
          fontSize: Dimens.dp12,
          fontWeight: FontWeight.w500,
          color: textSolidColor),
    );
  }

  AppBarTheme get appBarTheme {
    return const AppBarTheme(
      centerTitle: false,
    );
  }

  CardTheme get cardTheme {
    return CardTheme(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.dp8),
            side: BorderSide(color: borderColor)));
  }

  BottomNavigationBarThemeData get bottomNavigationBarTheme {
    return BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: disabledColor,
      selectedItemColor: primaryColor,
      selectedLabelStyle: textTheme.labelMedium?.copyWith(
        fontSize: Dimens.dp10,
        color: primaryColor,
      ),
      unselectedLabelStyle: textTheme.labelMedium?.copyWith(
        fontSize: Dimens.dp10,
        color: disabledColor,
      ),

    );
  }

  ThemeData get theme {
    return ThemeData(
      colorScheme: ColorScheme.light(
          primary: primaryColor, secondary: primaryColor, error: errorColor),
      scaffoldBackgroundColor: scaffoldColor,
      useMaterial3: true,
      fontFamily: 'Poppins',
      textTheme: textTheme,
      appBarTheme: appBarTheme,
      cardTheme: cardTheme,
      bottomNavigationBarTheme: bottomNavigationBarTheme
    );
  }
}
