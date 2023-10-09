class Post{
  String? id;
  String? date;
  String? title;
  String? content;

  Post({this.id, required this.date, required this.title, required this.content});

  factory Post.fromJson(Map<String, dynamic> json){
    return Post(id: json['ID'], date: json['post_date'] as String, title: json['post_title'] as String, content: json['post_content'] as String);
  }
}