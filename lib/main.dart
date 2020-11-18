import 'package:app_push_notifications/src/screen/home_screen.dart';
import 'package:app_push_notifications/src/screen/message_screen.dart';
import 'package:app_push_notifications/src/services/push_notifications_service.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    final pushNotificationsService = PushNotificationsService();
    pushNotificationsService.initNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Push notifications',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomeScreen(),
        'message': (BuildContext context) => MessageScreen(),
      },
    );
  }
}
