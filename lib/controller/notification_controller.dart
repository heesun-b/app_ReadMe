import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationController {

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  Future<void> setupInteractedMessage(FirebaseMessaging fbMsg) async {
    RemoteMessage? initialMessage = await fbMsg.getInitialMessage();
    // 종료상태에서 클릭한 푸시 알림 메세지 핸들링
    if (initialMessage != null) clickMessageEvent(initialMessage);
    // 앱이 백그라운드 상태에서 푸시 알림 클릭 하여 열릴 경우 메세지 스트림을 통해 처리
    FirebaseMessaging.onMessageOpenedApp.listen(clickMessageEvent);
  }

  void clickMessageEvent(RemoteMessage message) {
    print('message : ${message.notification!.title}');
  }

  Future<void> fbMsgForegroundHandler(
      RemoteMessage message,
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin,
      AndroidNotificationChannel? channel) async {

    if (message.notification != null) {
      flutterLocalNotificationsPlugin.show(
          message.hashCode,
          message.notification?.title,
          message.notification?.body,
          NotificationDetails(
              android: AndroidNotificationDetails(
                channel!.id,
                channel.name,
                channel.description,
                icon: '@mipmap/ic_launcher',
              )
        )
      );
    }
  }
}
