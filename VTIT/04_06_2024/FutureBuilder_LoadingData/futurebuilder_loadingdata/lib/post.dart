class PostDL {
  final int id;
  final String title;
  final String body;

  PostDL({required this.id, required this.title, required this.body});

  factory PostDL.fromJson(Map<String, dynamic> json) {
    return PostDL(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
