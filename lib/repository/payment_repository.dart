

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';


class PaymentRepository {
  static final PaymentRepository _instance= PaymentRepository._single();
  factory PaymentRepository() {
    return _instance;
  }
  PaymentRepository._single();

  Future<ResponseDTO> payment () async {
    Dio dio = await MyHttp.getSecurity();
    // todo 경로 및 데이터 추가
    Response response = await dio.post("/", data: {});
    ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
    //
    return responseDTO;
  }

}