import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'notification_controller.dart';

class MyApp extends StatelessWidget {
  final MyNotificationController notificationController =
      MyNotificationController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Notification Test')),
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              await notificationController.localNotification();
            },
            child: Text('Send Notification'),
          ),
        ),
      ),
    );
  }
}
