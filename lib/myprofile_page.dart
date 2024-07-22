import 'package:flutter/material.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        backgroundColor: const Color(0xFFE7E8E3),
      ),
      body: Container(
        color: const Color(0xFFE7E8E3),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage:
                      NetworkImage('https://daskomlab.com/assets/BOT.jpg'),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: const TextStyle(
                      color: Color(0xFF3B614A),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                    ),
                    filled: true,
                    fillColor: const Color(0xffE7E8E3),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: const TextStyle(
                      color: Color(0xFF3B614A),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                    ),
                    filled: true,
                    fillColor: const Color(0xffE7E8E3),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Nama',
                    labelStyle: const TextStyle(
                      color: Color(0xFF3B614A),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                    ),
                    filled: true,
                    fillColor: const Color(0xffE7E8E3),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Alamat',
                    labelStyle: const TextStyle(
                      color: Color(0xFF3B614A),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                    ),
                    filled: true,
                    fillColor: const Color(0xffE7E8E3),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Deskripsi (Nama tumbuhan/ keterangan lainnya)',
                    labelStyle: const TextStyle(
                      color: Color(0xFF3B614A),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                    ),
                    filled: true,
                    fillColor: const Color(0xffE7E8E3),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'No. Handphone',
                    labelStyle: const TextStyle(
                      color: Color(0xFF3B614A),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                    ),
                    filled: true,
                    fillColor: const Color(0xffE7E8E3),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      color: Color(0xFF3B614A),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                    ),
                    filled: true,
                    fillColor: const Color(0xffE7E8E3),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: _obscureConfirmPassword,
                  decoration: InputDecoration(
                    labelText: 'Konfirmasi Password',
                    labelStyle: const TextStyle(
                      color: Color(0xFF3B614A),
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                    ),
                    filled: true,
                    fillColor: const Color(0xffE7E8E3),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFF3B614A),
                        width: 2.0,
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureConfirmPassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureConfirmPassword = !_obscureConfirmPassword;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    // Handle login logic here
                  },
                  child: Container(
                    height: 50,
                    width: 900,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(10.0), // Add this line
                      gradient: const LinearGradient(
                        colors: [Color(0xFF3B614A), Color(0xFF123456)],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Update Data',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Color(0xffE7E8E3),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
