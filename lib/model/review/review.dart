import 'package:readme_app/model/user/user.dart';

class Review {
  final int id;
  final User user;
  final double stars;
  final String content;
  final String status;

  Review(
      {required this.id,
      required this.user,
      required this.stars,
      required this.content,
      required this.status});

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user,
        "stars": stars,
        "content": content,
        "status": status,
      };

  Review.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        user = User.fromJson(json["smallCategory"]),
        stars = json["stars"],
        content = json["content"],
        status = json["status"];
}
