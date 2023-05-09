
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/dto/notice_dto/notice_dto.dart';
import 'package:readme_app/dto/notice_list_dto/notice_list_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/repository/notice_repository.dart';
import 'package:readme_app/view/components/custom_dialog.dart';

part 'notification_page_view_model.freezed.dart';

@unfreezed
class NotificationPageModel with _$NotificationPageModel {
  factory NotificationPageModel({
    NoticeListDTO? noticeList,
  }) = _NotificationPageModel;
}

class NotificationPageViewModel extends StateNotifier<NotificationPageModel?> {
  NotificationPageViewModel(super.state);

  void notifyInit() async {
    ResponseDTO responseDTO = await NoticeRepository().getList();
    NotificationPageModel model = NotificationPageModel(noticeList: null);
    if(responseDTO.code == 1) {
      NoticeListDTO noticeListDTO = responseDTO.data;
      model.noticeList = noticeListDTO;
      state = model;
    } else {
      DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
    }
  }

  void pageSearch(int page, ResponseDTO responseDTO) async {
    if(responseDTO.code == 1) {
      NoticeListDTO newModel = responseDTO.data;
      newModel.pageable.pageNumber = page;

      List<NoticeDTO> originContent =  state!.noticeList!.content;
      newModel.content.addAll(originContent);

      state = state!.copyWith(noticeList: newModel);
    } else {
      DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
    }
  }
}

final noticePageProvider = StateNotifierProvider.autoDispose<NotificationPageViewModel, NotificationPageModel?>((ref) {
  return NotificationPageViewModel(null)..notifyInit();
},
);
