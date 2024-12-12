class NoteModel {
  late String id;
  late String userId;
  late String title;
  late String content;
  late DateTime date;
  late List<String>? tags;

  // Constructor
  NoteModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.content,
    required this.date,
    this.tags,
  });

  // Convert NoteModel to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'content': content,
      'date': date.toIso8601String(),
      'tags': tags,
    };
  }

  // Create NoteModel from Map
  factory NoteModel.fromMap(Map<String, dynamic> map) {
    return NoteModel(
      id: map['id'],
      userId: map['userId'],
      title: map['title'],
      content: map['content'],
      date: DateTime.parse(map['date']),
      tags: List<String>.from(map['tags'] ?? []),
    );
  }
}
