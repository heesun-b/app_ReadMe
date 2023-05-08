
import 'package:readme_app/model/user/user.dart';

class Review {
  final int id;
  final User user;
  final double stars;
  final String content;
  final String status;
  final String writeTime;

  Review(
      {
      required this.id,
      required this.user,
      required this.stars,
      required this.content,
      required this.status,
      required this.writeTime,
    });

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user.toJson(),
        "stars": stars,
        "content": content,
        "status": status,
        "writeTime": writeTime
      };

  Review.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        user = User.fromJson(json["user"]),
        stars = json["stars"],
        content = json["content"],
        writeTime = json["writeTime"],
        status = json["status"];
}
