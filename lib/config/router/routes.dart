import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persnote/module/view/pages/init.app.dart';

class Routes {
  static GetPage appRoute() => GetPage(name: '/', page: () => const InitApp());

  static GetPage notFound() => GetPage(
        name: '/notfound',
        page: () => const Center(
          child: Text("page not found!"),
        ),
      );

  static initialize() => _init();

  static List<GetPage<dynamic>> _init() => [
        appRoute(),
      ];
}
