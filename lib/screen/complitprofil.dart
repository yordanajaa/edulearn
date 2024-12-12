import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Isi Profil"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(decoration: InputDecoration(labelText: "Nama")),
            const TextField(decoration: InputDecoration(labelText: "Usia")),
            const TextField(decoration: InputDecoration(labelText: "Tempat")),
            const TextField(decoration: InputDecoration(labelText: "Nomor")),
            const TextField(decoration: InputDecoration(labelText: "Email")),
            DropdownButtonFormField(
              items: const [
                DropdownMenuItem(value: "Pernah", child: Text("Pernah")),
                DropdownMenuItem(value: "Belum Pernah", child: Text("Belum Pernah")),
              ],
              onChanged: (value) {},
              decoration: const InputDecoration(labelText: "Pernah Konsul Sebelumnya"),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Konfirmasi"),
            ),
          ],
        ),
      ),
    );
  }
}