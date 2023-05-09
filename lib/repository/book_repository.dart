import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/book_detail_dto/book_detail_dto.dart';
import 'package:readme_app/dto/cart_dto/cart_dto.dart';
import 'package:readme_app/dto/main_dto/main_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/sqflite/table/table_user.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class BookRepository {
  static final BookRepository _instance = BookRepository._single();

  factory BookRepository() {
    return _instance;
  }

  BookRepository._single();

  Future<ResponseDTO> getBookDetail (int bookId) async {
    try{
      Dio dio = await MyHttp.getCommon();
      Response response = await dio.get("/books/$bookId/detail?size=3");
      if(response.statusCode == 200) {
        log(response.data.toString());
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        BookDetailDTO bookDetailDTO = BookDetailDTO.fromJson(responseDTO.data);
        responseDTO.data = bookDetailDTO;
        return responseDTO;
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : $e");
    }
  }

  Future<ResponseDTO> findCartList() async {
    try {
      Dio dio = await MyHttp.getSecurity();
      TableUser? tableUser =  await MySqfliteInit.getUser();
      Response response =
          await dio.get("/carts/${tableUser!.id}/users");

      if(response.statusCode == 401 || response.statusCode == 403) {
        return ResponseDTO(code: 401, msg: response.statusMessage);
      } else if(response.statusCode == 200) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        List<CartDTO> cartList = [];
        for (var cartBook in responseDTO.data) {
          CartDTO cartDTO = CartDTO.fromJson(cartBook);
          cartList.add(cartDTO);
        }
        responseDTO.data = cartList;
        return responseDTO;
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> mainList(String requestName, {int? bigCategory, int? smallCategory}) async {
    String endPoint = getEndPoint(requestName, bigCategory, smallCategory);
    try {
      Response response = await MyHttp.get().get("/books$endPoint&page=0&size=10");
      if(response.statusCode == 200) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        MainDTO mainDTO = MainDTO.fromJson(responseDTO.data);
        responseDTO.data = mainDTO;
        return responseDTO;
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> searchMainListPage(int page, String requestName, {int? bigCategory, int? smallCategory}) async {
    String endPoint = getEndPoint(requestName, bigCategory, smallCategory);
    try {
      Response response = await MyHttp.get()
          .get("/books$endPoint&page=$page&size=10");
      if(response.statusCode == 200) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        MainDTO mainDTO = MainDTO.fromJson(responseDTO.data);
        responseDTO.data = mainDTO;
        return responseDTO;
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }

  String getEndPoint(String requestName, int? bigCategory, int? smallCategory) {
    String endPoint = "?status=$requestName";
    if (bigCategory != null) {
      endPoint += "&bigCategoryId=$bigCategory";
    }
    if (smallCategory != null) {
      endPoint += "&smallCategoryId=$smallCategory";
    }
    return endPoint;
  }

  Future<ResponseDTO> deleteCartBook(int id) async {
    try {
      Dio dio = await MyHttp.getSecurity();
      Response response = await dio.delete("/carts/$id");
      if(response.statusCode == 401 ||response.statusCode == 403 ) {
        return ResponseDTO(code: 401, msg: response.statusMessage);
      } else if (response.statusCode == 200) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        return responseDTO;
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> addCart(int bookId) async {
    try{
      Dio dio = await MyHttp.getCommon();
      Response response = await dio.post("/carts", data: {"bookId" : bookId});
      print(response.data);
      if(response.statusCode == 401 || response.statusCode == 403) {
        return ResponseDTO(code: 401, msg: response.statusMessage);
      } else if (response.statusCode == 200 ) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        CartDTO cartDTO = CartDTO.fromJson(responseDTO.data);
        responseDTO.data = cartDTO;
        return responseDTO;
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
    } catch(e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }
}
