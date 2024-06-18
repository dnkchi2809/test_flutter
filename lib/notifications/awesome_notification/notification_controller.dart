import 'package:awesome_notifications/awesome_notifications.dart';

class NotificationController {
  static void showNotification(NotificationContent notificationContent) {
    AwesomeNotifications().createNotification(
      content: notificationContent,
    );
  }
}
