import 'package:flutter/material.dart';
import 'navbar.dart';

class HomeScreenWithNavbar extends StatelessWidget {
  const HomeScreenWithNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Navbar(),
    );
  }
}