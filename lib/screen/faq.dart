import 'package:flutter/material.dart';

class FAQApp extends StatelessWidget{
  FAQApp({key}) : super(key: key);
  final List<Map<String, String>> faqs = [
    {
      'question': 'Bagaimana cara mengunduh aplikasi ini?',
      'answer': 'Anda dapat mengunduh aplikasi ini dari Play Store atau App Store.'
    },
    {
      'question': 'Apakah aplikasi ini gratis?',
      'answer': 'Ya, aplikasi ini gratis dengan fitur dasar. Namun, ada opsi pembelian dalam aplikasi.'
    },
    {
      'question': 'Bagaimana cara memperbarui data di aplikasi?',
      'answer': 'Anda dapat memperbarui data dengan menavigasi ke menu "Pengaturan" dan memilih "Perbarui Data".'
    },
    {
      'question': 'Apa yang harus dilakukan jika saya mengalami masalah?',
      'answer': 'Silakan hubungi tim dukungan kami melalui halaman "Bantuan" di menu aplikasi.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAQ"),
      ),
      body: ListView.builder(
        itemCount: faqs.length,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(faqs[index]['question'] ?? ''),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(faqs[index]['answer'] ?? ''),
              ),
            ],
          );
        },
      ),
    );
  }
}
