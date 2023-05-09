
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/user/user.dart';

class Review {
  final int id;
  final User user;
  final double stars;
  final String content;
  final String writeTime;

  Review(
      {
      required this.id,
      required this.user,
      required this.stars,
      required this.content,
      required this.writeTime,
    });

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user.toJson(),
        "stars": stars,
        "content": content,
        "writeTime": writeTime
      };

  Review.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        user = User.fromJson(json["user"]),
        stars = json["stars"],
        content = json["content"],
        writeTime = json["writeTime"];
}

class MyBook {
  final int id;
  final String title;
  final String coverUrl;
  final String author;

  MyBook({
    required this.id,
    required this.title,
    required this.coverUrl,
    required this.author,
  });

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "coverUrl": coverUrl,
    "author": author
  };

  MyBook.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        coverUrl = json["coverUrl"],
        author = json["author"];
}

class MyReview {
  final int id;
  final MyBook book;
  final double stars;
  final String content;
  final String writeTime;

  MyReview(
      {
        required this.id,
        required this.book,
        required this.stars,
        required this.content,
        required this.writeTime,
      });

  Map<String, dynamic> toJson() => {
    "id": id,
    "book": book.toJson(),
    "stars": stars,
    "content": content,
    "writeTime": writeTime
  };

  MyReview.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        book = MyBook.fromJson(json["book"]),
        stars = json["stars"],
        content = json["content"],
        writeTime = json["writeTime"];
}
