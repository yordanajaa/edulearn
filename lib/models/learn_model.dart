class LearnModel {
  late String id;
  late String title;
  late String description;
  late String content;
  late int duration; // in minutes
  late String thumbnailUrl;

  // Constructor
  LearnModel({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.duration,
    required this.thumbnailUrl,
  });

  // Convert LearnModel to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'content': content,
      'duration': duration,
      'thumbnailUrl': thumbnailUrl,
    };
  }

  // Create LearnModel from Map
  factory LearnModel.fromMap(Map<String, dynamic> map) {
    return LearnModel(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      content: map['content'],
      duration: map['duration'],
      thumbnailUrl: map['thumbnailUrl'],
    );
  }
}
