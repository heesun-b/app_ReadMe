import 'dart:math';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/main_dto/main_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/cart_mock_data.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class BookRepository {
  static final BookRepository _instance = BookRepository._single();

  factory BookRepository() {
    return _instance;
  }

  BookRepository._single();

   List<CartMockData> findCartList() {
    return cartList;
  }

  Future<ResponseDTO> getBanner() async {
    try {
      Response response =
      await dio.get("http://43.200.163.130:8080/books?page=0&size=3");
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

      MainDTO mainDTO = MainDTO.fromJson(responseDTO.data);
      responseDTO.data = mainDTO;
      return responseDTO;
    } catch (e) {
      // print(e);
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> mainList(BookSearchType type) async {
    String endPoint =
    type == BookSearchType.best ? "/best-sellers" : "/${type.name}";
    if (type.name == "total" || type.name == "latest") {
      endPoint = "";
    }
    try {
      Response response = await dio
          .get("http://43.200.163.130:8080/books$endPoint?page=0&size=10");


      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      MainDTO mainDTO = MainDTO.fromJson(responseDTO.data);
      responseDTO.data = mainDTO;

      return responseDTO;
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> searchMainListPage(int page, BookSearchType type) async {
    String endPoint =
    type == BookSearchType.best ? "/best-sellers" : "/${type.name}";
    if (type.name == "total" || type.name == "latest") {
      endPoint = "";
    }
    try {
      Response response = await dio
          .get("http://43.200.163.130:8080/books$endPoint?page=$page&size=10");
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      MainDTO mainDTO = MainDTO.fromJson(responseDTO.data);
      responseDTO.data = mainDTO;
      return responseDTO;
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }
}
