import 'package:flutter/material.dart';
import 'ubahpassword.dart';
import '../screen/welcome.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atur Akun"), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.lock_outline),
              title: Text("Ganti Password"),
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChangePasswordScreen(),
                ),
              );
              },
            ),
            ListTile(
              leading: Icon(Icons.delete_outline),
              title: Text("Hapus Akun"),
              subtitle: Text("Kamu akan kehilangan semua riwayat konseling"),
              onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Welcome(),
                ),
              );
              },
            ),
          ],
        ),
      ),
    );
  }
}