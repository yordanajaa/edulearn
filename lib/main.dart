import 'package:flutter/material.dart';
import 'package:tugas_uas_1/screen/welcome.dart'; // Impor file firebase_crud.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
    );
  }
}
