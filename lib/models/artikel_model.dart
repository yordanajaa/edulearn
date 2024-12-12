class ArtikelModel {
   String? id;
  late String title;
  late String content;
  String description;
   String? author;
   DateTime? publishedDate;
   String? imageUrl;

  ArtikelModel({
     this.id,
    required this.title,
    required this.content,
    required this.description,
     this.author,
     this.publishedDate,
     this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'author': author,
      'description': description,
      'publishedDate': publishedDate?.toIso8601String(),
      'imageUrl': imageUrl,
    };
  }

  // Create ArticleModel from Map
  factory ArtikelModel.fromMap(Map<String, dynamic> map) {
    return ArtikelModel(
      id: map['id'],
      title: map['title'],
      content: map['content'],
      description: map['description'],
      author: map['author'],
      publishedDate: DateTime.parse(map['publishedDate']),
      imageUrl: map['imageUrl'],
    );
  }
}
