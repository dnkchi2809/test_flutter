import 'package:flutter/cupertino.dart';
import 'package:monarch_annotations/monarch_annotations.dart';

import 'my_localization.dart';

class MyLocalizationsDelegate extends LocalizationsDelegate<MyLocalizations> {
  const MyLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'vi'].contains(locale.languageCode);
  }

  @override
  Future<MyLocalizations> load(Locale locale) async {
    return MyLocalizations(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<MyLocalizations> old) {
    return false;
  }
}

@MonarchLocalizations([MonarchLocale('en', 'US'), MonarchLocale('vi')])
const MyLocalizationsDelegate myLocalizationsDelegate =
    MyLocalizationsDelegate();
