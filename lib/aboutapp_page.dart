import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
        backgroundColor: const Color(0xFFE7E8E3),
      ),
      body: Container(
        width: 900,
        color: const Color(0xFFE7E8E3),
        padding: const EdgeInsets.all(16.0),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Image(
              image: AssetImage('assets/images/logo.png'),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Smart Drip Irrigation',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: Color(0xFF3B614A),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Smart Drip Irrigation adalah sebuah aplikasi yang dirancang khusus untuk membantu petani dalam memonitor dan mengontrol sistem irigasi pertanian.',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 88, 88, 88),
                fontFamily: 'Inter',
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'App Info',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
                color: Color(0xFF3B614A),
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Versi: 1.0-release\nCopyright © 2024 Smart Drip Irrigation',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 88, 88, 88),
                fontFamily: 'Inter',
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
