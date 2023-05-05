import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명
part 'notice_type_wrapper.freezed.dart';
part 'notice_type_wrapper.g.dart';


@freezed
class NoticeTypeWrapper with _$NoticeTypeWrapper {
  factory NoticeTypeWrapper({
    required String noticeType
  }) = _NoticeTypeWrapper;

  factory NoticeTypeWrapper.fromJson(Map<String, Object?> json) => _$NoticeTypeWrapperFromJson(json);

}