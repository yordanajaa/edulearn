class ChatModel {
  late String id;
  late String senderId;
  late String receiverId;
  late String message;
  late DateTime timestamp;
  late bool isRead;
  late String? chatType; 

  // Constructor
  ChatModel({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.message,
    required this.timestamp,
    required this.isRead,
    this.chatType,
  });

  // Convert ChatModel to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'senderId': senderId,
      'receiverId': receiverId,
      'message': message,
      'timestamp': timestamp.toIso8601String(),
      'isRead': isRead,
      'chatType': chatType,
    };
  }

  // Create ChatModel from Map
  factory ChatModel.fromMap(Map<String, dynamic> map) {
    return ChatModel(
      id: map['id'],
      senderId: map['senderId'],
      receiverId: map['receiverId'],
      message: map['message'],
      timestamp: DateTime.parse(map['timestamp']),
      isRead: map['isRead'],
      chatType: map['chatType'],
    );
  }
}
