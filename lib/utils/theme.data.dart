import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trumecs/utils/app.color.dart';
import 'package:trumecs/utils/app.textTheme.dart';

class AppTheme {
  ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColor.primary,
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColor.primary,
      disabledColor: Colors.grey,
    ),
  );

  ThemeData lightTheme = ThemeData(
    dividerColor: AppColor.grey,
    hintColor: AppColor.grey.withOpacity(0.5),
    canvasColor: AppColor.background,
    fontFamily: GoogleFonts.poppins().fontFamily,
    listTileTheme: const ListTileThemeData(
      // minVerticalPadding: 0.0,
      // contentPadding: EdgeInsets.zero,
      dense: true,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColor.light,
    ),
    dividerTheme: const DividerThemeData(
      color: AppColor.grey,
      indent: 0.0,
      space: 0.0,
    ),
    textTheme: const TextTheme(
      bodySmall: AppTextTheme.bodySmall,
      bodyMedium: AppTextTheme.bodyMedium,
      bodyLarge: AppTextTheme.bodyLarge,
      titleLarge: AppTextTheme.titleLarge,
      headlineSmall: AppTextTheme.headlineSmall,
      headlineMedium: AppTextTheme.headlineMedium,
      headlineLarge: AppTextTheme.headlineLarge,
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
      backgroundColor: AppColor.light,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 20.0,
        color: AppColor.dark,
        fontFamily: GoogleFonts.lato().fontFamily,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(
        color: AppColor.grey,
      ),
      actionsIconTheme: const IconThemeData(
        color: AppColor.grey,
      ),
    ),
    tabBarTheme: const TabBarTheme(
      labelStyle: AppTextTheme.bodySmall,
      unselectedLabelColor: AppColor.grey,
      indicatorColor: AppColor.grey,
      labelColor: AppColor.dark,
      unselectedLabelStyle: AppTextTheme.bodySmall,
    ),
    cardTheme: CardTheme(
      color: AppColor.light,
      shadowColor: AppColor.grey,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      margin: EdgeInsets.zero,
    ),
    brightness: Brightness.light,
    shadowColor: AppColor.grey,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      unselectedItemColor: AppColor.grey,
      selectedItemColor: AppColor.dark,
      backgroundColor: AppColor.light,
      selectedLabelStyle: AppTextTheme.bodySmall,
      unselectedLabelStyle: AppTextTheme.bodySmall,
      showUnselectedLabels: true,
    ),
    iconTheme: const IconThemeData(
      color: AppColor.grey,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColor.primary,
      foregroundColor: AppColor.light,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          const Size(double.infinity, 50),
        ),
        alignment: Alignment.center,
        backgroundColor: MaterialStateProperty.all(
          AppColor.primary,
        ),
        foregroundColor: MaterialStateProperty.all(
          AppColor.light,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          AppTextTheme.bodySmall,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    ),
    primaryColor: AppColor.primary,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColor.primary,
      onPrimary: AppColor.light,
      secondary: AppColor.secondary,
      onSecondary: AppColor.light,
      error: AppColor.warning,
      onError: AppColor.light,
      background: AppColor.background,
      onBackground: AppColor.dark,
      surface: AppColor.grey,
      onSurface: AppColor.grey,
      tertiary: AppColor.grey,
      outline: AppColor.grey,
      errorContainer: AppColor.grey,
      onPrimaryContainer: AppColor.grey,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColor.primary,
      disabledColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      textTheme: ButtonTextTheme.primary,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: AppColor.light,
      filled: true,
      labelStyle: AppTextTheme.bodySmall,
      hintStyle: AppTextTheme.bodySmall,
      contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        borderSide: BorderSide(color: AppColor.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        borderSide: BorderSide(color: AppColor.grey),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColor.light,
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: AppColor.light,
    ),
    dialogTheme: const DialogTheme(
      contentTextStyle: AppTextTheme.bodySmall,
    ),
  );
}
