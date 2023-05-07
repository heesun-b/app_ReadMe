import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/dto/main_dto/main_dto.dart';
import 'package:readme_app/dto/meta_dto/meta_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:sqflite/sqflite.dart';


GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Widget failWidget =  const MaterialApp(
    home: Center(
      child: Text("현재 App을 사용하실 수 없습니다."),
    ),
  );

  //
  WidgetsFlutterBinding.ensureInitialized();
  
  // Meta 통신 
  Dio dio = MyHttp.get();

  // TODO
  // Dio dio = await MyHttp.getSecurity();
  try {
    Response response = await dio.get("/meta");
    if (response.statusCode == 200) {
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      if (responseDTO.code == 1) {
        MetaDTO metaDTO = MetaDTO.fromJson(responseDTO.data);
        await MySqfliteInit.init(metaDTO);

        runApp(
          const ProviderScope(
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
    // print("Ex: ${e.toString()}");
    runApp(
      failWidget,
    );
  }

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colours.app_main, fontFamily: 'NanumGothic',),
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: Move.loginPage,
      routes: getRouters(),
    );
  }
}
