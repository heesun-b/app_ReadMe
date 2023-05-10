import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/controller/notification_controller.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/core/constants/secure_storage.dart';
import 'package:readme_app/core/constants/secure_storage_enum.dart';
import 'package:readme_app/dto/meta_dto/meta_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/sqflite/sqflite.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  await SecureStorage.clear();

  NotificationController notificationController = NotificationController();
  var token = await notificationController.messaging.getToken();
  SecureStorage.setKey(SecureStorageEnum.fcmToken, token ?? "");

  AndroidNotificationChannel? androidNotificationChannel;

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  FirebaseMessaging.onMessage.listen((message) {
    notificationController.fbMsgForegroundHandler(message, flutterLocalNotificationsPlugin, androidNotificationChannel);
  });

  Widget failWidget = const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colours.app_sub_white,
      body: Center(
        child: Text(
          "현재 App을 사용하실 수 없습니다.",
          style:
              TextStyle(fontSize: Dimens.font_sp18, fontWeight: FontWeight.w700),
        ),
      ),
    ),
  );

  // Meta 통신
  Dio dio = await MyHttp.getCommon();

  try {
    Response response = await dio.get("/meta");
    if (response.statusCode == 200) {
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      if (responseDTO.code == 1) {
        MetaDTO metaDTO = MetaDTO.fromJson(responseDTO.data);
        await MySqfliteInit.init(metaDTO);
        if (metaDTO.jwt != null && metaDTO.jwt != "") {
          SecureStorage.setKey(SecureStorageEnum.jwtToken, metaDTO.jwt!);
        }
        await MySqfliteInit.deleteUser();
        runApp(
          ProviderScope(
            child: MyApp(),
          ),
        );
      } else {
        runApp(
          failWidget,
        );
      }
    } else {
      runApp(
        failWidget,
      );
    }
  } catch (e) {
    print(e.toString());
    runApp(
      failWidget,
    );
  }
}

class MyApp extends StatelessWidget {
  MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colours.app_main,
        fontFamily: 'NanumGothic',
      ),
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: Move.navigationBar,
      // initialRoute: Move.loginPage,
      routes: getRouters(),
    );
  }
}
