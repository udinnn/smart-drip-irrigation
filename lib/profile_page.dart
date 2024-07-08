import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE7E8E3),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          top: 20.0,
        ),
        child: Column(
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      NetworkImage('https://daskomlab.com/assets/BOT.jpg'),
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
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'test@gmail.com',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Inter',
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 24),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            _buildMenuItem(Icons.person_2_outlined, 'Profil Saya'),
            _buildMenuItem(Icons.history_outlined, 'Riwayat Kontrol'),
            _buildMenuItem(Icons.question_answer_outlined, 'FAQ'),
            _buildMenuItem(Icons.info_outline, 'Tentang Aplikasi'),
            const SizedBox(
              height: 200,
            ),
            _buildMenuItem(Icons.logout_outlined, 'Keluar'),
          ],
        ),
      ),
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
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
