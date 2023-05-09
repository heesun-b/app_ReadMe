import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/model/pageable/pageable.dart';
import 'package:readme_app/model/review/review.dart';

// 파일명
part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezed
class ReviewDTO with _$ReviewDTO {
  factory ReviewDTO({
    required List<Review> content,
    required Pageable pageable,
    required bool last,
    required int totalPages,
}) = _ReviewDTO;

factory ReviewDTO.fromJson(Map<String, Object?> json) => _$ReviewDTOFromJson(json);

}
