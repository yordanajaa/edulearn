import 'package:flutter/material.dart';

import 'detail_artikel.dart';

// Artikel model
class Artikel {
  final String title;
  final String description;
  final String content;

  Artikel({ required this.title,  required this.description,  required this.content});
}

class ArtikelScreen extends StatelessWidget {
   ArtikelScreen({key}) : super(key: key);

  // Daftar artikel
  final List<Artikel> artikelList = [
    Artikel(
      title: 'Manfaat Belajar di Era Digital',
      description: 'Artikel tentang manfaat belajar di era digital dan bagaimana teknologi membantu pendidikan.',
      content: 'Konten lengkap tentang manfaat belajar di era digital...',
    ),
    Artikel(
      title: 'Tips Mengatur Waktu Belajar',
      description: 'Cara efektif mengatur waktu belajar untuk hasil yang maksimal.',
      content: 'Konten lengkap tentang cara mengatur waktu belajar...',
    ),
    Artikel(
      title: 'Motivasi Belajar di Masa Pandemi',
      description: 'Strategi menjaga motivasi belajar meskipun dalam masa pandemi.',
      content: 'Konten lengkap tentang motivasi belajar di masa pandemi...',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: artikelList.length,
        itemBuilder: (context, index) {
          final artikel = artikelList[index];
          return _buildArticleCard(context, artikel);
        },
      ),
    );
  }

  Widget _buildArticleCard(BuildContext context, Artikel artikel) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailArtikelScreen(title: artikel.title, content: artikel.content),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              artikel.title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              artikel.description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}