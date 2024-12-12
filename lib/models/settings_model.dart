class SettingsModel {
  late String id;
  late String userId;
  late bool notificationsEnabled;
  late String theme; // light/dark
  late String language;
  late String? defaultCounselor;

  // Constructor
  SettingsModel({
    required this.id,
    required this.userId,
    required this.notificationsEnabled,
    required this.theme,
    required this.language,
    this.defaultCounselor,
  });

  // Convert SettingsModel to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userId': userId,
      'notificationsEnabled': notificationsEnabled,
      'theme': theme,
      'language': language,
      'defaultCounselor': defaultCounselor,
    };
  }

  // Create SettingsModel from Map
  factory SettingsModel.fromMap(Map<String, dynamic> map) {
    return SettingsModel(
      id: map['id'],
      userId: map['userId'],
      notificationsEnabled: map['notificationsEnabled'],
      theme: map['theme'],
      language: map['language'],
      defaultCounselor: map['defaultCounselor'],
    );
  }
}
