class VideoModel {
  late String id;
  late String title;
  late String description;
  late String url;
  late String thumbnailUrl;
  late int duration; // in seconds

  // Constructor
  VideoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.url,
    required this.thumbnailUrl,
    required this.duration,
  });

  // Convert VideoModel to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'url': url,
      'thumbnailUrl': thumbnailUrl,
      'duration': duration,
    };
  }

  // Create VideoModel from Map
  factory VideoModel.fromMap(Map<String, dynamic> map) {
    return VideoModel(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      url: map['url'],
      thumbnailUrl: map['thumbnailUrl'],
      duration: map['duration'],
    );
  }
}
