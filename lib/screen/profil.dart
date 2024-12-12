import 'package:flutter/material.dart';
import 'complitprofil.dart';
import 'setting.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                  const Text('My Profile',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),),
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SettingsScreen()),
                      );
                    },
                  ),
                ]),
                const SizedBox(height: 22),
                const Center(
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/profile_image.png'),
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white70,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Center(
                  child: Text(
                    'Nama',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CompleteProfileScreen(),
                        ),
                      );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Wajib kamu isi',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                              Text(
                                'Sebelum Konseling',
                                style: TextStyle(
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.person),
                            SizedBox(width: 5),
                            Text(
                              'Lengkapi Profil',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Mood Terakhir',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 10),
                Container(
                  child: const Row(
                    children: [
                      Chip(label: Text("Pekerjaan")),
                      SizedBox(width: 8),
                      Chip(label: Text("Kesehatan")),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [
                    Chip(label: Text("Hubungan")),
                    SizedBox(width: 8),
                    Chip(label: Text("Kepuasan Hidup")),
                  ],
                ),
                const SizedBox(height: 16),
                const Text("Catatan Terakhir", style: TextStyle(fontSize: 18)),
                ListTile(
                  title: const Text("Rabu 23 Okt 24"),
                  subtitle: const Text("Lorem ipsum dolor sit amet..."),
                  trailing: TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Aksi membaca...')),
                      );
                    },
                    child: const Text("Baca"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
