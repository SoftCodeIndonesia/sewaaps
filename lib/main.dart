import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persnote/config/localization.dart';
import 'package:persnote/config/router/routes.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          useInheritedMediaQuery: true,
          locale: Localization.locale,
          // supportedLocales: const [
          //   Locale('en', 'US'),
          //   Locale('id', 'ID'),
          //   Locale('fr', 'FR'),
          //   Locale('hi', 'IN'),
          //   Locale('ko', 'KR'),
          //   Locale('pt', 'PT'),
          //   Locale('ja', 'JP'),
          //   Locale('zh', 'CN'),
          //   Locale('de', 'DE'),
          //   Locale('it', 'IT'),
          // ],
          builder: (context, widget) => ResponsiveWrapper.builder(
            // DevicePreview.appBuilder(context, widget),
            widget,
            maxWidth: 1200,
            minWidth: 450,
            defaultScale: true,
            breakpoints: const [
              ResponsiveBreakpoint.resize(450, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.autoScale(1000, name: TABLET),
              ResponsiveBreakpoint.autoScale(1200, name: DESKTOP),
              ResponsiveBreakpoint.autoScale(2460, name: "4K"),
            ],
          ),
          // darkTheme: AppTheme().darkTheme,
          // themeMode: ThemeMode.system,
          // theme: AppTheme().lightTheme,
          debugShowCheckedModeBanner: false,
          // locale: Localization.locale,
          fallbackLocale: Localization.fallbackLocale,
          translations: Localization(),
          getPages: Routes.initialize(),
          initialRoute: Routes.appRoute().name,
          defaultTransition: Transition.rightToLeft,
        );
      },
    );
  }
}
