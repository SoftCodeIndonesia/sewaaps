import 'dart:math';
import 'dart:ui';

import 'package:sheet_loader_localization/sheet_loader_localization.dart';
part "locale_keys.g.dart";

// https://docs.google.com/spreadsheets/d/1l13G_KUEVm09QL4qKqQddS5rMw7kVFNN/edit?usp=sharing&ouid=110941579821504432243&rtpof=true&sd=true
@SheetLocalization(
  docId: '1l13G_KUEVm09QL4qKqQddS5rMw7kVFNN',
  version: 1,
  // the `1` is the generated version.
  //You must increment it each time you want to regenerate a new version of the labels.
  outDir: 'resources/langs',
  //default directory save downloaded CSV file
  outName: 'langs.csv',
)
class _LocaleKeys {}
