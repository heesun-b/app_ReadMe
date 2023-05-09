import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/main_dto/main_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/repository/book_repository.dart';
import 'package:readme_app/repository/notice_repository.dart';
import 'package:readme_app/view/page/category/category_page/category_page_view_model.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';
import 'package:readme_app/view/page/notification/components/notification_page_view_model.dart';

final noticeControllerProvider = Provider<NoticeController>((ref) {
  return NoticeController(ref);
});

// 화면 이동 + repository 조회
class NoticeController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  NoticeController(this.ref);

  Future<void> pageSearch(int page) async {
      ResponseDTO responseDTO =  await NoticeRepository().searchPage(page);
      ref.read(noticePageProvider.notifier).pageSearch(responseDTO);
  }



}
