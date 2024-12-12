import 'package:flutter/material.dart';
import 'package:tugas_uas_1/models/artikel_model.dart';
import 'package:tugas_uas_1/service/artikel_services.dart';

import 'detail_artikel.dart';

// // Artikel model
// class Artikel {
//   final String title;
//   final String description;
//   final String content;

//   Artikel({ required this.title,  required this.description,  required this.content});
// }

class ArtikelScreen extends StatelessWidget {
   ArtikelScreen({key}) : super(key: key);
  ArtikelServices artikelServices = ArtikelServices();


  // Daftar artikel
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: artikelServices.artikelList.length,
        itemBuilder: (context, index) {
          final artikel = artikelServices.artikelList[index];
          return _buildArticleCard(context, artikel);
        },
      ),
    );
  }

  Widget _buildArticleCard(BuildContext context, ArtikelModel artikel) {
    return InkWell(
      onTap: () {
        // artikelServices.addArtikel(artikel);
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