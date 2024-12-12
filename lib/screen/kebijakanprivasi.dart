import 'package:flutter/material.dart';

class Kebijakanprivasi extends StatelessWidget {
  const Kebijakanprivasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kebijakan Privasi"),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 22),
            Padding(padding: EdgeInsets.all(16.0), 
            child: Text(
              'Kami di EduLearn menghargai privasi Anda. Kebijakan privasi ini menjelaskan bagaimana kami mengumpulkan, menggunakan, menyimpan, dan melindungi informasi Anda saat menggunakan aplikasi Android kami. Dengan menggunakan aplikasi ini, Anda menyetujui kebijakan privasi ini.'
              ),
            ),
          ]
        )
        ),
    );
  }
}