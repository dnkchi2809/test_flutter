import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_flutter/stateManagement/redux/testRedux/testFlutterReduxApp.dart';

void main() {
  runApp(MaterialApp(
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
