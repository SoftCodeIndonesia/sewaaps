import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:trumecs/utils/lang/locale_keys.dart';

class InitApp extends StatelessWidget {
  const InitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(LocaleKeys.apaYangBaru.tr()),
      ),
    );
  }
}
