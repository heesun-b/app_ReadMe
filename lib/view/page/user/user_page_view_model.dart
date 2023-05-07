// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:flutter/foundation.dart';
// import 'package:readme_app/dto/meta_dto/meta_dto.dart';
// import 'package:readme_app/model/membership_payment/membership_payment.dart';
// import 'package:readme_app/sqflite/sqflite.dart';
// import 'package:readme_app/sqflite/table/table_user.dart';
//
// part 'user_page_view_model.freezed.dart';
// @unfreezed
// class UserPageModel with _$UserPageModel {
//   factory UserPageModel({
//     required
//   }) = _UserPageModel;
// }
//
// class UserPageViewModel extends StateNotifier<UserPageModel?> {
//   UserPageViewModel(super.state);
//
//   void notifyInit() async {
//
//   }
// }
//
// final userPageProvider = StateNotifierProvider.autoDispose<
//     UserPageViewModel, UserPageModel?>(
//       (ref) {
//     return UserPageViewModel(null)..notifyInit();
//   },
// );