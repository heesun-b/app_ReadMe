

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/dto/user_info_dto/user_info_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/user/user_repository.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/sqflite/table/table_user.dart';
import 'package:readme_app/view/components/custom_dialog.dart';

part 'user_page_view_model.freezed.dart';
@unfreezed
class UserPageModel with _$UserPageModel {
  factory UserPageModel({
    UserInfoDTO? userInfoDTO,
    String? username,
    String? role,
    int? id
  }) = _UserPageModel;
}

class UserPageViewModel extends StateNotifier<UserPageModel?> {
  UserPageViewModel(super.state);

  void notifyInit() async {
    TableUser? tableUserInfo = await MySqfliteInit.getUser();

    if(tableUserInfo != null) {
      ResponseDTO responseDTO = await UserRepository().getUserInfo();
      if (responseDTO.code == 401) {
        Navigator.pushNamedAndRemoveUntil(navigatorKey.currentContext!, Move.loginPage, (route) => false);
      } else if (responseDTO.code == 1) {
          UserInfoDTO userInfoDTO = responseDTO.data;
          UserPageModel userPageModel = UserPageModel(userInfoDTO: userInfoDTO, role: tableUserInfo.role, id: tableUserInfo.id, username: tableUserInfo.username);
          state = userPageModel;
      } else {
        DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
      }
    }
  }
}

final userPageProvider = StateNotifierProvider.autoDispose<
    UserPageViewModel, UserPageModel?>(
      (ref) {
    return UserPageViewModel(null)..notifyInit();
  },
);