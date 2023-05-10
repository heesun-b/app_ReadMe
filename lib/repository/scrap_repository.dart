import 'package:dio/dio.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/model/book/book.dart';

class ScrapRepository {
  static final ScrapRepository _instance = ScrapRepository._single();

  factory ScrapRepository() {
    return _instance;
  }

  ScrapRepository._single();

    Future<ResponseDTO> addScrap(int bookId) async {
    try{
      Dio dio = await MyHttp.getSecurity();
      // todo 경로 수정
      Response response = await dio.post("/경로추가", data: {'bookId' : bookId});
      if(response.statusCode == 401 || response.statusCode == 403) {
        return ResponseDTO(code: 401, msg: response.statusMessage);
      } else if (response.statusCode == 200 ) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      // todo 데이터 파싱
        Book book = Book.fromJson(responseDTO.data);
        responseDTO.data = book;
        return responseDTO;
      } else {
        return ResponseDTO(code: response.statusCode, msg: response.statusMessage);
      }
    } catch(e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> deleteScrap(int id) async {
    try {
      Dio dio = await MyHttp.getSecurity();
      // todo 경로 수정
      Response response = await dio.delete("/경로추가", data: {'bookId' : id});
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
}



