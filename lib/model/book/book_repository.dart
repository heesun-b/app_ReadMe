import 'dart:math';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/cart_dto/cart_dto.dart';
import 'package:readme_app/dto/cart_dto/cart_dto_list.dart';
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

  Future <ResponseDTO> findCartList() async {
    try {
      Response response = await dio.get(
          "http://43.200.163.130:8080/carts/1/users");
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      // print("체크: ${responseDTO.data.runtimeType}");  List<dynamic>


      List<CartDTO> cartList = [];
      for (var cartBook in responseDTO.data) {
        CartDTO cartDTO = CartDTO.fromJson(cartBook);
        cartList.add(cartDTO);
      }

      responseDTO.data = cartList;

      return responseDTO;
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
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


  Future <void> deleteCartBook(int id) async {
    // await dio.delete("/")
  }

}
