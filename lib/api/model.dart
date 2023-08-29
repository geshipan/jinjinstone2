class GetUserModel {
  final String email;
  final String profileImage;

  GetUserModel({required this.email, required this.profileImage});

  factory GetUserModel.fromJson(Map<String, dynamic> json) {
    return GetUserModel(
      email: json['email'],
      profileImage: json['profileImage'],
    );
  }
}

class PostModel {
  final int id;
  final int userId;
  final String title;
  final String content;
  final int view;
  final String createdAt;
  final List<String> files;
  final int like;
  final List<CommentModel> comments;

  PostModel(
      {required this.id,
      required this.userId,
      required this.title,
      required this.content,
      required this.view,
      required this.createdAt,
      required this.files,
      required this.like,
      required this.comments});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      content: json['content'],
      view: json['view'],
      createdAt: json['createdAt'],
      files: json['files'].cast<List<String>>(),
      like: json['like'],
      comments: json['comments'].cast<List<CommentModel>>(),
    );
  }
}

class CommentModel {
  final int userId;
  final String comment;
  final String createdAt;

  CommentModel({
    required this.userId,
    required this.comment,
    required this.createdAt,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) {
    return CommentModel(
      userId: json['userId'],
      comment: json['comment'],
      createdAt: json['createdAt'],
    );
  }
}
