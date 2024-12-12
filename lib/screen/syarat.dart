import 'package:flutter/material.dart';

class syaratdanketentuan extends StatelessWidget {
  const syaratdanketentuan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Syarat Dan Ketentuan"),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 22),
              Padding(padding: EdgeInsets.all(16.0), 
              child: Text(
                'Dengan mengunduh atau menggunakan aplikasi Android ini, pengguna menyetujui syarat dan ketentuan yang berlaku. Aplikasi ini dapat mengubah atau memperbarui syarat dan ketentuan kapan saja tanpa pemberitahuan sebelumnya, sehingga pengguna diharapkan untuk secara berkala memeriksa perubahan tersebut. Pengguna diberi lisensi terbatas, non-eksklusif, dan tidak dapat dialihkan untuk mengakses dan menggunakan aplikasi, dengan larangan keras terhadap penyalinan, pengubahan, atau distribusi konten aplikasi tanpa izin. Ketika membuat akun, pengguna diharuskan memberikan informasi yang akurat dan bertanggung jawab atas keamanan akun serta segala aktivitas yang terjadi di dalamnya. Aplikasi ini mungkin mengumpulkan, menyimpan, dan memproses data pribadi pengguna sesuai dengan kebijakan privasi yang berlaku, dan pengguna dianggap telah menyetujui cara penggunaan data ini. Konten yang diunggah oleh pengguna ke aplikasi dapat digunakan oleh aplikasi sesuai dengan hak lisensi yang diberikan. Aplikasi disediakan "sebagaimana adanya" dan "sebagaimana tersedia," dan tidak memberikan jaminan eksplisit atau implisit terkait kinerja atau keamanannya. Aplikasi tidak bertanggung jawab atas kerugian atau kerusakan yang mungkin timbul dari penggunaan aplikasi. Seluruh hak cipta, merek dagang, dan hak kekayaan intelektual terkait konten aplikasi dilindungi oleh hukum yang berlaku, dan penggunaan yang tidak sah dari elemen-elemen ini dilarang. Aplikasi berhak untuk menangguhkan atau menghapus akun pengguna yang melanggar syarat dan ketentuan ini. Segala sengketa yang timbul akan diselesaikan berdasarkan hukum yang berlaku di yurisdiksi yang ditentukan. Jika ada pertanyaan atau memerlukan bantuan, pengguna dapat menghubungi layanan bantuan atau kontak resmi yang disediakan dalam aplikasi.'
                ),
              ),
            ]
          ),
        )
        ),
    );
  }
}