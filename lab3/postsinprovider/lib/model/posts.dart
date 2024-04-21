class Posts {
  final int id;
  final int userId;
  final String title;
  final String body;

  const Posts({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });

  factory Posts.fromJosn(Map<String, dynamic> json) {
    return Posts(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
