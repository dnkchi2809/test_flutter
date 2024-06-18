import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

class MyNotificationController {
  Future<void> initializeLocalNotifications({required bool debug}) async {
    await AwesomeNotifications().initialize(
        'resource://drawable/res_app_icon',
        [
          NotificationChannel(
              channelKey: 'alerts',
              channelName: 'Alerts',
              channelDescription: 'Notification tests as alerts',
              playSound: true,
              importance: NotificationImportance.High,
              defaultPrivacy: NotificationPrivacy.Private,
              defaultColor: Colors.deepPurple,
              ledColor: Colors.deepPurple)
        ],
        debug: debug);
  }

  Future<void> checkAndRequestPermission() async {
    bool isAllowed = await AwesomeNotifications().isNotificationAllowed();
    if (!isAllowed) {
      await AwesomeNotifications().requestPermissionToSendNotifications();
      // Check the permission again after requesting
      isAllowed = await AwesomeNotifications().isNotificationAllowed();
    }
    print(isAllowed);
  }

  Future<void> localNotification() async {
    print('localNotification called'); // Debug log
    await AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 1,
        channelKey: 'alerts',
        title: 'This is Notification',
        bigPicture:
            'https://images.pexels.com/photos/14679216/pexels-photo-14679216.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        notificationLayout: NotificationLayout.BigPicture,
      ),
    );
    print('Notification created'); // Debug log
  }
}
