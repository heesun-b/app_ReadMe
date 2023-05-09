
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/dto/notice_dto/notice_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/repository/notice_repository.dart';
import 'package:readme_app/view/components/custom_dialog.dart';

part 'notice_detail_page_view_model.freezed.dart';

@unfreezed
class NoticeDetailPageModel with _$NoticeDetailPageModel {
  factory NoticeDetailPageModel({
    required NoticeDTO notice,
  }) = _NoticeDetailPageModel;
}

class NoticeDetailPageViewModel extends StateNotifier<NoticeDetailPageModel?> {
  NoticeDetailPageViewModel(super.state);

  void notifyInit(int id) async {
    ResponseDTO responseDTO = await NoticeRepository().getNotice(id);
    if(responseDTO.code == 1) {
      NoticeDTO noticeDTO = responseDTO.data;
      state = NoticeDetailPageModel(notice: noticeDTO);
    } else {
      DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
    }
  }
}

final noticePageDetailProvider = StateNotifierProvider.family.autoDispose<NoticeDetailPageViewModel, NoticeDetailPageModel?, int>((ref, id) {
  return NoticeDetailPageViewModel(null)..notifyInit(id);
},
);
