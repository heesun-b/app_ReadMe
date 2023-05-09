
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/dto/notice_dto/notice_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/repository/notice_repository.dart';
import 'package:readme_app/view/components/custom_dialog.dart';

part 'notification_detail_page_view_model.freezed.dart';

@unfreezed
class NotificationDetailPageModel with _$NotificationDetailPageModel {
  factory NotificationDetailPageModel({
    required NoticeDTO notice,
  }) = _NotificationDetailPageModel;
}

class NotificationDetailPageViewModel extends StateNotifier<NotificationDetailPageModel?> {
  NotificationDetailPageViewModel(super.state);

  void notifyInit(int id) async {
    ResponseDTO responseDTO = await NoticeRepository().getNotice(id);
    if(responseDTO.code == 1) {
      state = responseDTO.data;
    } else {
      DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
    }
  }

}

final noticePageDetailProvider = StateNotifierProvider.family.autoDispose<NotificationDetailPageViewModel, NotificationDetailPageModel?, int>((ref, id) {
  return NotificationDetailPageViewModel(null)..notifyInit(id);
},
);
