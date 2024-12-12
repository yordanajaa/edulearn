class FAQModel {
  late String id;
  late String question;
  late String answer;

  // Constructor
  FAQModel({
    required this.id,
    required this.question,
    required this.answer,
  });

  // Convert FAQModel to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': question,
      'answer': answer,
    };
  }

  // Create FAQModel from Map
  factory FAQModel.fromMap(Map<String, dynamic> map) {
    return FAQModel(
      id: map['id'],
      question: map['question'],
      answer: map['answer'],
    );
  }
}
