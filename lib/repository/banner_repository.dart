import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/book_detail_dto/book_detail_dto.dart';
import 'package:readme_app/dto/cart_dto/cart_dto.dart';
import 'package:readme_app/dto/main_dto/main_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/model/file_info/file_dto.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/sqflite/table/table_user.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class BannerRepository {
  static final BannerRepository _instance = BannerRepository._single();

  factory BannerRepository() {
    return _instance;
  }
  BannerRepository._single();
  Future<ResponseDTO> getBanners() async {
    try{
      Response response = await MyHttp.get().get("/banners");
      if(response.statusCode == 200) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        List<FileListDTO> files = (responseDTO.data as List<dynamic>).map((e) => FileListDTO.fromJson(e)).toList();
        responseDTO.data = files;
        return responseDTO;
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : $e");
    }
  }
}
