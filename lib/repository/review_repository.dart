import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/book_detail_dto/book_detail_dto.dart';
import 'package:readme_app/dto/cart_dto/cart_dto.dart';
import 'package:readme_app/dto/main_dto/main_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/dto/review_dto/review_dto.dart';
import 'package:readme_app/model/review/review.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/sqflite/table/table_user.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class ReviewRepository {
  static final ReviewRepository _instance = ReviewRepository._single();

  factory ReviewRepository() {
    return _instance;
  }

  ReviewRepository._single();

  Future<ResponseDTO> getReviews(int bookId, int page) async {
    try{
      Response response = await MyHttp.get().get("/reviews/$bookId/book?size=3&page=$page");
      if(response.statusCode == 200) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        ReviewDTO reviewDTO = ReviewDTO.fromJson(responseDTO.data);
        responseDTO.data = reviewDTO;
        return responseDTO;
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : $e");
    }
  }

  Future<ResponseDTO> getMyReviews() async {
    try{
      var dio = await MyHttp.getSecurity();
      Response response = await dio.get("/reviews/my");
      if(response.statusCode == 200) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        List<MyReview> myReviewList = (responseDTO.data as List<dynamic>).map((e) => MyReview.fromJson(e)).toList();
        responseDTO.data = myReviewList;
        return responseDTO;
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : $e");
    }
  }

  Future<ResponseDTO> reviewDelete(int id) async {
    try{
      var dio = await MyHttp.getSecurity();
      Response response = await dio.delete("/reviews/$id");
      if(response.statusCode == 200) {
        return ResponseDTO.fromJson(response.data);
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : $e");
    }
  }

  Future<ResponseDTO> save(int bookId, double stars, String content) async {
    try{
      var dio = await MyHttp.getSecurity();
      Response response = await dio.post("/reviews", data: {
        "bookId": bookId,
        "stars": stars,
        "content": content
      });

      if(response.statusCode == 200) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        ReviewDTO reviewDTO = ReviewDTO.fromJson(responseDTO.data);
        responseDTO.data = reviewDTO;
        return responseDTO;
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : $e");
    }
  }

}
