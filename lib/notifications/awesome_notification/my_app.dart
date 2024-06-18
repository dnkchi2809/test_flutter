import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'notification_controller.dart';

class MyApp extends StatelessWidget {
  late int _notificationId = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FloatingActionButton(
            onPressed: () {
              NotificationController.showNotification(NotificationContent(
                id: _notificationId++,
                channelKey: 'basic_channel',
                title: 'Notification title',
                body: 'This is the body of the notification',
              ));
            },
            tooltip: 'Show notification',
            child: const Icon(Icons.notifications),
          ),
        ),
      ),
    );
  }
}
