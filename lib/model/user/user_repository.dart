

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/core/constants/secure_storage.dart';
import 'package:readme_app/core/constants/secure_storage_enum.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';


class UserRepository {
  static final UserRepository _instance= UserRepository._single();
  factory UserRepository() {
    return _instance;
  }
  UserRepository._single();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();


  Future<ResponseDTO?> fetchJoinAndLogin() async {
    try{
      /// 1.구글 로그인
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        // // 로그인 취소
        return null;
      }

      /// 2.구글 로그인 정보로 인증
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // final UserCredential userCredential = await _auth.signInWithCredential(credential);

      /// 3.현재 사용자 가져오기
      final currentUser = _auth.currentUser;



      /// 4.사용자 id토큰 가져오기
      final idToken = await currentUser?.getIdToken();



      /// 5. id토큰을 스프링 서버로 전달
      Response response = await MyHttp.get().post("/login", data: {'idToken': idToken}); // 스프링에서 만든 join 로직에 요청


      /// 6.스프링 서버로 부터 받은 토큰을 앱 서버로 전달
      final jwtToken = response.headers.value('Authorization');


      /// 7.앱에서 사용자 토큰 저장
      if (jwtToken != null) {
        SecureStorage.setKey(SecureStorageEnum.jwtToken, jwtToken);
      }
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

      return responseDTO;
    }catch(e){
      print("Google Error 로그 $e");
      return ResponseDTO(code: -1, msg: "구글 로그인 실패");
    }
  }

  Future<void> logOut() async {
    await SecureStorage.clear();
  }
}