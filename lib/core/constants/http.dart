import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:readme_app/core/constants/secure_storage.dart';
import 'package:readme_app/core/constants/secure_storage_enum.dart';
import 'package:readme_app/main.dart';

class MyHttp {

  static const String _baseUrl = "http://52.78.109.74:8080";
  static const String _contentType = "application/json; charset=utf-8";

  static Dio get() {
    return Dio(BaseOptions(
      // 주소 변경
      baseUrl: _baseUrl ,
      contentType: _contentType,
    ));
  }

  static Future<Dio> getSecurity() async {
    String jwtToken = await SecureStorage.get(SecureStorageEnum.jwtToken) ?? "";
     return Dio(BaseOptions(
       headers: {
         "Authorization": jwtToken
       },
        // 주소 변경
        baseUrl: _baseUrl,
        contentType: _contentType,
      ));
  }

  static Future<Dio> getCommon() async {
    String? jwtToken = await SecureStorage.get(SecureStorageEnum.jwtToken);
    return jwtToken != null ? getSecurity() : Future(() => get());
  }

}

const secureStorage = FlutterSecureStorage();