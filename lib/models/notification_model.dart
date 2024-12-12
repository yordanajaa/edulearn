class NotificationModel {
  late String id;
  late String userId;
  late String title;
  late String body;
  late DateTime timestamp;
  late bool isRead;
  late String? notificationType; // informasi, pengingat, dll.

  // Constructor
  NotificationModel({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
    required this.timestamp,
    required this.isRead,
    this.notificationType,
  });

  // Convert NotificationModel to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'body': body,
      'timestamp': timestamp.toIso8601String(),
      'isRead': isRead,
      'notificationType': notificationType,
    };
  }

  // Create NotificationModel from Map
  factory NotificationModel.fromMap(Map<String, dynamic> map) {
    return NotificationModel(
      id: map['id'],
      userId: map['userId'],
      title: map['title'],
      body: map['body'],
      timestamp: DateTime.parse(map['timestamp']),
      isRead: map['isRead'],
      notificationType: map['notificationType'],
    );
  }
}
