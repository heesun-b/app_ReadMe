import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/book_detail_page.dart';
import 'package:readme_app/view/page/notice/notification_detail/notice_page_detail.dart';

class NotificationController {

  FirebaseMessaging messaging = FirebaseMessaging.instance;


  void clickMessageEvent(RemoteMessage message) {
    print(message.data['notificationType']);
    print(message.data['notificationData']);
    if (message.data['notificationType'] == 'ADVERTISEMENT') {
      Navigator.push(
          navigatorKey.currentContext!,
          MaterialPageRoute(
            builder: (context) =>
                BookDetailPage(bookId: message.data['notificationData'] ?? 0),
          )
      );
    } else if (message.data['NOTICE'] == 'ADVERTISEMENT') {
      Navigator.push(
          navigatorKey.currentContext!,
          MaterialPageRoute(
            builder: (context) => NoticePageDetail(id: message.data['notificationData'] ?? 0),
          ));
    }
  }

  Future<void> fbMsgForegroundHandler(
      RemoteMessage message,
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin,
      AndroidNotificationChannel? channel) async {

    const AndroidInitializationSettings androidInitializationSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    final InitializationSettings initializationSettings =
    const InitializationSettings(
      android: androidInitializationSettings,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: (playgroud) async {
        if (message.data['notificationType'] == 'ADVERTISEMENT') {
          Navigator.push(
              navigatorKey.currentContext!,
              MaterialPageRoute(
                builder: (context) =>
                    BookDetailPage(bookId: int.parse(message.data['notificationData'])),
              )
          );
        } else if (message.data['notificationType'] == 'NOTICE') {
          Navigator.push(
              navigatorKey.currentContext!,
              MaterialPageRoute(
                builder: (context) => NoticePageDetail(id: int.parse(message.data['notificationData'])),
              ));
        }
        print(playgroud);
      }
    );

    print("Message:" + message.data.toString());

    flutterLocalNotificationsPlugin.show(
        message.hashCode,
        message.data['title'],
        message.data['body'],
        NotificationDetails(
            android: AndroidNotificationDetails(
              channel!.id,
              channel.name,
              channel.description,
              icon: '@mipmap/ic_launcher',
            )
      ),
      payload: message.data['notificationType']
    );
  }
}
