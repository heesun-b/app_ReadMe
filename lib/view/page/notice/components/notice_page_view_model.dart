
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/dto/notice_dto/notice_dto.dart';
import 'package:readme_app/dto/notice_list_dto/notice_list_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/repository/notice_repository.dart';
import 'package:readme_app/view/components/custom_dialog.dart';

part 'notice_page_view_model.freezed.dart';

@unfreezed
class NoticePageModel with _$NoticePageModel {
  factory NoticePageModel({
    NoticeListDTO? noticeList,
  }) = _NoticePageModel;
}

class NoticePageViewModel extends StateNotifier<NoticePageModel?> {
  NoticePageViewModel(super.state);

  void notifyInit() async {
    ResponseDTO responseDTO = await NoticeRepository().getList();
    NoticePageModel model = NoticePageModel(noticeList: null);
    if(responseDTO.code == 1) {
      NoticeListDTO noticeListDTO = responseDTO.data;
      model.noticeList = noticeListDTO;
      state = model;
    } else {
      DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
    }
  }

  void pageSearch(ResponseDTO responseDTO) async {
    if(responseDTO.code == 1) {
      NoticeListDTO newModel = responseDTO.data;
      List<NoticeDTO> content =  [...state!.noticeList!.content, ...newModel.content];
      state = state!.copyWith(
          noticeList: state!.noticeList?.copyWith(
            last: newModel.last,
            pageable: newModel.pageable,
            content: content
          )
      );
    } else {
      DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
    }
  }
}

final noticePageProvider = StateNotifierProvider.autoDispose<NoticePageViewModel, NoticePageModel?>((ref) {
  return NoticePageViewModel(null)..notifyInit();
},
);
