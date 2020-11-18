import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationsService {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  initNotifications() async {
    await _firebaseMessaging.requestNotificationPermissions();

    final token = await _firebaseMessaging.getToken();

    print("==== FCM TOKEN ====");
    print(token);

    _firebaseMessaging.configure(
      onMessage: _onMessage,
      onBackgroundMessage: _onBackgroundMessage,
      onLaunch: _onLaunch,
      onResume: _onResume,
    );
  }

  Future<dynamic> _onMessage(Map<String, dynamic> message) async {
    print("onMessage: $message");
    // _showItemDialog(message);
  }

  static Future<dynamic> _onBackgroundMessage(
    Map<String, dynamic> message,
  ) async {
    if (message.containsKey('data')) {
      // Handle data message
      final dynamic data = message['data'];
      print(data);
    }

    if (message.containsKey('notification')) {
      // Handle notification message
      final dynamic notification = message['notification'];
      print(notification);
    }
    // Or do other work.
  }

  Future<dynamic> _onLaunch(Map<String, dynamic> message) async {
    print("onLaunch: $message");
    // _navigateToItemDetail(message);
  }

  Future<dynamic> _onResume(Map<String, dynamic> message) async {
    print("onResume: $message");
    // _navigateToItemDetail(message);
  }
}
