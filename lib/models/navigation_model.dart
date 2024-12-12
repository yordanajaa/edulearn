class NavigationModel {
  late String id;
  late String label;
  late String icon;
  late String destination;

  // Constructor
  NavigationModel({
    required this.id,
    required this.label,
    required this.icon,
    required this.destination,
  });

  // Convert NavigationModel to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'label': label,
      'icon': icon,
      'destination': destination,
    };
  }

  // Create NavigationModel from Map
  factory NavigationModel.fromMap(Map<String, dynamic> map) {
    return NavigationModel(
      id: map['id'],
      label: map['label'],
      icon: map['icon'],
      destination: map['destination'],
    );
  }
}
