class ArtikelModel {
  late String id;
  late String title;
  late String content;
  late String author;
  late DateTime publishedDate;
  late String imageUrl;

  ArtikelModel({
    required this.id,
    required this.title,
    required this.content,
    required this.author,
    required this.publishedDate,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'author': author,
      'publishedDate': publishedDate.toIso8601String(),
      'imageUrl': imageUrl,
    };
  }

  // Create ArticleModel from Map
  factory ArtikelModel.fromMap(Map<String, dynamic> map) {
    return ArtikelModel(
      id: map['id'],
      title: map['title'],
      content: map['content'],
      author: map['author'],
      publishedDate: DateTime.parse(map['publishedDate']),
      imageUrl: map['imageUrl'],
    );
  }
}
