class MoodModel {
  late String id;
  late String userId;
  late int moodLevel; // 1-5
  late String? note;
  late DateTime date;

  // Constructor
  MoodModel({
    required this.id,
    required this.userId,
    required this.moodLevel,
    this.note,
    required this.date,
  });

  // Convert MoodModel to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'moodLevel': moodLevel,
      'note': note,
      'date': date.toIso8601String(),
    };
  }

  // Create MoodModel from Map
  factory MoodModel.fromMap(Map<String, dynamic> map) {
    return MoodModel(
      id: map['id'],
      userId: map['userId'],
      moodLevel: map['moodLevel'],
      note: map['note'],
      date: DateTime.parse(map['date']),
    );
  }
}
