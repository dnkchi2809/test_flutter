import 'package:flutter/material.dart';
import 'package:monarch_annotations/monarch_annotations.dart';

@MonarchTheme('Light Theme')
ThemeData get lightTheme => ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

@MonarchTheme('Dark Theme')
ThemeData get darkTheme => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

@MonarchTheme('Fancy Theme')
ThemeData get fancyTheme => ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.purple,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      // Add more customizations here
    );
