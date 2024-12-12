import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Password Kamu"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 16),
            const Text(
              'Masukan Password lama untuk akun ini',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 5),
            const TextField(
              decoration: InputDecoration(
                labelText: "Masukan Password lama",
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            const Text(
              'Masukan Password baru untuk akun ini',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 5),
            const TextField(
              decoration: InputDecoration(
                labelText: "Masukan Password baru",
              ),
              obscureText: true,
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
