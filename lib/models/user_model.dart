class UserModel {
  late String uid;
  late final String alamat;
  late final String email;
  late final String password;
  late final String role;
  late final String? name;
  late final String? phoneNumber;
  late int usia;

  // Constructor
  UserModel({
    required this.uid,
    required this.alamat,
    required this.email,
    required this.password,
    required this.role,
    this.name,
    this.phoneNumber,
    required this.usia,
  });

  // Convert UserModel to Map
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'alamat': alamat,
      'email': email,
      'password': password,
      'role': role,
      'name': name,
      'phoneNumber': phoneNumber,
      'usia': usia,
    };
  }

  // Create UserModel from Map
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'],
      alamat: map['alamat'],
      email: map['email'],
      password: map['password'],
      role: map['role'],
      name: map['name'],
      phoneNumber: map['phoneNumber'],
      usia: map['usia'],
    );
  }
}
