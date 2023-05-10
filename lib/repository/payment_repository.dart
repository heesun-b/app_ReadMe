

import 'package:dio/dio.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/cart_dto/cart_dto.dart';
import 'package:readme_app/dto/payment_dto/payment_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/dto/use_cart/use_cart_dto.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/sqflite/table/table_user.dart';


class PaymentRepository {
  static final PaymentRepository _instance= PaymentRepository._single();
  factory PaymentRepository() {
    return _instance;
  }
  PaymentRepository._single();

  Future<ResponseDTO> payment (List<UseCartDTO> cartBookList) async {
    print("체크2");
    List<int> bookIdList  = cartBookList.map((e) => e.cartDTO.book.id).toList();
    print("체크3 ${bookIdList.toString()}");

    Dio dio = await MyHttp.getSecurity();
    Response response = await dio.post("/payments/books", data: {'bookIds' : bookIdList});
    print("체크5 ${response.data.toString()}");
    if(response.statusCode == 401 || response.statusCode == 403) {
      return ResponseDTO(code: 401, msg: response.statusMessage);
    } else if (response.statusCode == 200 ) {
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      PaymentDTO paymentDTO = PaymentDTO.fromJson(responseDTO.data);
      print("체크6 ${paymentDTO.toString()}");
      responseDTO.data = paymentDTO;
      return responseDTO;
    } else {
      return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
    }
  }
}