import 'package:app_push_notifications/src/screen/home_screen.dart';
import 'package:app_push_notifications/src/screen/message_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Push notifications',
      // home: HomeScreen(),
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomeScreen(),
        'message': (BuildContext context) => MessageScreen(),
      },
    );
  }
}
