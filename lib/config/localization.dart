import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../lang/en.dart';
import '../lang/id.dart';

class Localization extends Translations {
  static final locale = Get.locale;
  static const fallbackLocale = Locale('en', 'US');

  @override
  // ignore: todo
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "en_US": enUS,
        "id_ID": idID,
      };
}
