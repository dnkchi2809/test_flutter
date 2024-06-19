import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_flutter/stateManagement/redux/testRedux/testFlutterReduxApp.dart';

import 'localizations/intl_localizations_delegate.dart';

void main() {
  runApp(MaterialApp(
    localizationsDelegates: const [
      myLocalizationsDelegate,
    ],
    supportedLocales: const [
      Locale('en', 'US'),
      Locale('vi'),
    ],
    home: SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.red,
        //   title: const Text('Home'),
        // ),
        body: TestFlutterReduxApp(),
      ),
    ),
    theme: ThemeData(
        // fontFamily: 'Belagia',
        ),
    debugShowCheckedModeBanner: false,
  ));
}
