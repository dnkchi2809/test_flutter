import 'package:flutter/material.dart';

import 'my_app.dart';
import 'notification_controller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MyNotificationController notificationController = MyNotificationController();
  await notificationController.initializeLocalNotifications(debug: true);
  await notificationController.checkAndRequestPermission();

  runApp(MyApp());
}
