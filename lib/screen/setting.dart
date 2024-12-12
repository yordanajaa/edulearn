import 'package:flutter/material.dart';
import 'akunsetting.dart';
import 'faq.dart';
import 'lainya.dart';
import '../screen/welcome.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Akun"),
            subtitle: Text("Atur akun"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AccountSettingsScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.help_outline),
            title: Text("Bantuan"),
            subtitle: Text("FAQ dan cara menghubungi tim kami"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FAQApp(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline),
            title: Text("Lainnya"),
            subtitle: Text("Kebijakan privasi dan ketentuan aplikasi"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LainyaScreen(),
                ),
              );
            },
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Welcome()),
              );
            },
            child: Text("Keluar Akun"),
          ),
        ],
      ),
    );
  }
}