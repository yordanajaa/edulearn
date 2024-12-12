import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FirebaseCrud extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

   FirebaseCrud({super.key});

  // Fungsi Create: Menambahkan data baru ke Firestore
  Future<void> createUser(String userId, String name, String email) async {
    try {
      await _firestore.collection('users').doc(userId).set({
        'name': name,
        'email': email,
      });
      print("User created successfully!");
    } catch (e) {
      print("Error creating user: $e");
    }
  }

  // Fungsi Read: Membaca data dari Firestore
  Future<void> getUser(String userId) async {
    try {
      DocumentSnapshot snapshot = await _firestore.collection('users').doc(userId).get();
      if (snapshot.exists) {
        print("User data: ${snapshot.data()}");
      } else {
        print("User not found!");
      }
    } catch (e) {
      print("Error reading user: $e");
    }
  }

  // Fungsi Update: Memperbarui data yang ada di Firestore
  Future<void> updateUser(String userId, String newName) async {
    try {
      await _firestore.collection('users').doc(userId).update({
        'name': newName,
      });
      print("User updated successfully!");
    } catch (e) {
      print("Error updating user: $e");
    }
  }

  // Fungsi Delete: Menghapus data dari Firestore
  Future<void> deleteUser(String userId) async {
    try {
      await _firestore.collection('users').doc(userId).delete();
      print("User deleted successfully!");
    } catch (e) {
      print("Error deleting user: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase CRUD Test"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => createUser("user1", "John Doe", "johndoe@example.com"),
              child: Text("Create User"),
            ),
            ElevatedButton(
              onPressed: () => getUser("user1"),
              child: Text("Get User"),
            ),
            ElevatedButton(
              onPressed: () => updateUser("user1", "John Updated"),
              child: Text("Update User"),
            ),
            ElevatedButton(
              onPressed: () => deleteUser("user1"),
              child: Text("Delete User"),
            ),
          ],
        ),
      ),
    );
  }
}
