import 'package:demeter_cd_sdi/aboutapp_page.dart';
import 'package:demeter_cd_sdi/faq_page.dart';
import 'package:demeter_cd_sdi/history_page.dart';
import 'package:demeter_cd_sdi/myprofile_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7E8E3),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
        child: Column(
          children: [
            _buildProfileHeader(),
            const SizedBox(height: 32),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyProfilePage(),
                  ),
                );
              },
              child: _buildMenuItem(Icons.person_2_outlined, 'Profil Saya'),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ControlHistoryPage(),
                  ),
                );
              },
              child: _buildMenuItem(Icons.history_outlined, 'Riwayat Kontrol'),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FAQPage(),
                  ),
                );
              },
              child: _buildMenuItem(Icons.question_answer_outlined, 'FAQ'),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(),
                  ),
                );
              },
              child: _buildMenuItem(Icons.info_outline, 'Tentang Aplikasi'),
            ),
            const SizedBox(height: 16),
            Expanded(child: Container()),
            GestureDetector(
              onTap: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: _buildMenuItem(Icons.logout_outlined, 'Keluar'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage('https://daskomlab.com/assets/BOT.jpg'),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0, top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Udin Sedunia',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  color: Color(0xFF3B614A),
                ),
              ),
              Text(
                'test@gmail.com',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Inter',
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: const Color(0xFF3B614A),
              ),
              const SizedBox(width: 16),
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
