import 'package:tugas_uas_1/models/artikel_model.dart';

class ArtikelServices{ 
  final List<ArtikelModel> artikelList = [
    ArtikelModel(
      title: 'Manfaat Belajar di Era Digital',
      description: 'Artikel tentang manfaat belajar di era digital dan bagaimana teknologi membantu pendidikan.',
      content: 'Konten lengkap tentang manfaat belajar di era digital...',
    ),
    ArtikelModel(
      title: 'Tips Mengatur Waktu Belajar',
      description: 'Cara efektif mengatur waktu belajar untuk hasil yang maksimal.',
      content: 'Konten lengkap tentang cara mengatur waktu belajar...',
    ),
    ArtikelModel(
      title: 'Motivasi Belajar di Masa Pandemi',
      description: 'Strategi menjaga motivasi belajar meskipun dalam masa pandemi.',
      content: 'Konten lengkap tentang motivasi belajar di masa pandemi...',
    ),
  ];

  addArtikel(ArtikelModel artikel) {
    artikelList.add(artikel);
  }

  
}