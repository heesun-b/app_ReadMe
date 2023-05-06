import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/main_dto/main_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/provider/session_provider.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

final userControllerProvider = Provider<UserController>((ref) {
  return UserController(ref);
});

// 화면 이동 + repository 조회
class UserController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;
  var isDuplication = false;

  UserController(this.ref);


  }

