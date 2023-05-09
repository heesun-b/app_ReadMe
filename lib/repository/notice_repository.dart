import 'package:dio/dio.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/notice_dto/notice_dto.dart';
import 'package:readme_app/dto/notice_list_dto/notice_list_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';

class NoticeRepository {
  static final NoticeRepository _instance = NoticeRepository._single();

  factory NoticeRepository() {
    return _instance;
  }

  NoticeRepository._single();

  Future <ResponseDTO> getList () async {
    try {
      Dio dio = await MyHttp.getCommon();
      Response response = await dio.get("/notices?page=0&size=10");
      if (response.statusCode == 200) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        NoticeListDTO noticeListDTO = NoticeListDTO.fromJson(responseDTO.data);
        responseDTO.data = noticeListDTO;
        return responseDTO;
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> searchPage (int page) async {
    try{
      Dio dio = await MyHttp.getCommon();
      Response response = await dio.get("/notices?page=$page&size=10");
      if (response.statusCode == 200) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        NoticeListDTO noticeListDTO = NoticeListDTO.fromJson(responseDTO.data);
        responseDTO.data = noticeListDTO;
        return responseDTO;
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> getNotice (int id) async {
    try{
      Dio dio = await MyHttp.getCommon();
      Response response = await dio.get("/notices/$id");
      if(response.statusCode == 200) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        NoticeDTO noticeDTO = responseDTO.data;
        responseDTO.data = noticeDTO;
        return responseDTO;
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
     } catch (e){
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }
}
