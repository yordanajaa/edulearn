import 'package:flutter/material.dart';
import 'package:tugas_uas_1/screen/kebijakanprivasi.dart';
import 'package:tugas_uas_1/screen/syarat.dart';


class LainyaScreen extends StatelessWidget {
   const LainyaScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Syarat Dan Ketentuan"),
            subtitle: const Text("Atur akun"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const syaratdanketentuan(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text("Kebijakan Privasi"),
            subtitle: const Text("FAQ dan cara menghubungi tim kami"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Kebijakanprivasi(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}