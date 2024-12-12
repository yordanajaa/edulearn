class konselingModel {
  late String id;
  late String counselorId;
  late String patientId;
  late DateTime schedule;
  late String status; // scheduled/completed
  late String? notes;

  // Constructor
  konselingModel({
    required this.id,
    required this.counselorId,
    required this.patientId,
    required this.schedule,
    required this.status,
    this.notes,
  });

  // Convert CounselingModel to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'counselorId': counselorId,
      'patientId': patientId,
      'schedule': schedule.toIso8601String(),
      'status': status,
      'notes': notes,
    };
  }

  // Create CounselingModel from Map
  factory konselingModel.fromMap(Map<String, dynamic> map) {
    return konselingModel(
      id: map['id'],
      counselorId: map['counselorId'],
      patientId: map['patientId'],
      schedule: DateTime.parse(map['schedule']),
      status: map['status'],
      notes: map['notes'],
    );
  }
}
