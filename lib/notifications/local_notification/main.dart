import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(
    MaterialApp(home: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();

    var initializationSettingDarwin = DarwinInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    var initializationSettings = InitializationSettings(
      macOS: initializationSettingDarwin,
    );

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    );

    _requestPermissions();
  }

  // Request macOS notification permissions
  void _requestPermissions() {
    flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            MacOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(alert: true, badge: true, sound: true);
  }

  // Method 2
  Future _showNotificationWithDefaultSound() async {
    var darwinPlatformChannelSpecifics = const DarwinNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
      macOS: darwinPlatformChannelSpecifics,
    );
    await flutterLocalNotificationsPlugin.show(
      0,
      'Default Notification',
      'Đây là thông báo với default sound và default icon',
      platformChannelSpecifics,
      payload: 'Default_Sound',
    );
  }

  // Method 3
  Future _showNotificationWithoutSound() async {
    var darwinPlatformChannelSpecifics = const DarwinNotificationDetails(
      presentSound: false,
    );
    var platformChannelSpecifics = NotificationDetails(
      macOS: darwinPlatformChannelSpecifics,
    );
    await flutterLocalNotificationsPlugin.show(
      0,
      'Notification',
      'Đây là thông báo không có sound và default icon',
      platformChannelSpecifics,
      payload: 'No_Sound',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plugin example app'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ElevatedButton(
              onPressed: _showNotificationWithoutSound,
              child: const Text('Show Notification Without Sound'),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: _showNotificationWithDefaultSound,
              child: const Text('Show Notification With Default Sound'),
            ),
          ],
        ),
      ),
    );
  }

  void onDidReceiveNotificationResponse(
      NotificationResponse notificationResponse) async {
    String? payload = notificationResponse.payload;
    if (payload != null) {
      debugPrint('notification payload: $payload');
    }
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text("Thông báo"),
          content: Text("Push Notification : $payload"),
        );
      },
    );
  }

  void onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {
    showDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title ?? ''),
        content: Text(body ?? ''),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            child: const Text('Ok'),
            onPressed: () async {
              Navigator.of(context, rootNavigator: true).pop();
            },
          )
        ],
      ),
    );
  }
}
