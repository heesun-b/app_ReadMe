import 'package:dio/dio.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/model/qustion/question.dart';

class QuestionRepository {

  Future<ResponseDTO> getList() async {
    try {
      var dio = await MyHttp.getSecurity();
      Response response = await dio.get("/questions");
      if(response.statusCode == 401 || response.statusCode == 403) {
        return ResponseDTO(code: 401, msg: response.statusMessage);
      } else if(response.statusCode == 200) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        var data = responseDTO.data as List<dynamic>;
        responseDTO.data = data.map((e) => Question.fromJson(e)).toList();
        return responseDTO;
      } else {
        return ResponseDTO(code:response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : $e");
    }
  }

  Future<ResponseDTO> delete(int id) async {
    try {
      var dio = await MyHttp.getSecurity();
      Response response = await dio.delete("/questions/$id");
      if(response.statusCode == 401 || response.statusCode == 403) {
        return ResponseDTO(code: 401, msg: response.statusMessage);
      } else if(response.statusCode == 200) {
        return ResponseDTO.fromJson(response.data);
      } else {
        return ResponseDTO(code:response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : $e");
    }
  }


  Future<ResponseDTO> saveQuestion (
      String title,
      String content,
      int publisherId
    ) async {
    try {
      var dio = await MyHttp.getSecurity();
      Response response = await dio.post("/questions",
                                        data: {
                                          "publisherId": publisherId,
                                          'title': title,
                                          'content': content
                                        });
      if(response.statusCode == 401 || response.statusCode == 403) {
        return ResponseDTO(code: 401, msg: response.statusMessage);
      } else if(response.statusCode == 200) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        responseDTO.data = Question.fromJson(responseDTO.data);
        return responseDTO;
      } else {
        return ResponseDTO(code:response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : $e");
    }
  }

}