import 'package:flutter/material.dart';

class MyLocalizations {
  final Locale locale;

  MyLocalizations(this.locale);

  static MyLocalizations? of(BuildContext context) {
    return Localizations.of<MyLocalizations>(context, MyLocalizations);
  }

  // Add your localized strings here
  String get hello {
    if (locale.languageCode == 'vi') {
      return 'Xin chào';
    } else {
      return 'Hello';
    }
  }
}
