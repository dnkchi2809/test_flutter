import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'navigator/returnDataFromScreen/homeScreen.dart';

void main() {
  runApp(MaterialApp(
    home: const SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.red,
        //   title: const Text('Home'),
        // ),
        body: HomeScreen(),
      ),
    ),
    theme: ThemeData(
        // fontFamily: 'Belagia',
        ),
    debugShowCheckedModeBanner: false,
  ));
}
