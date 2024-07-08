import 'package:demeter_cd_sdi/login_page.dart';
import 'package:demeter_cd_sdi/sendotp_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool obscureText = true;
  bool obscureText2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE7E8E3),
      body: Stack(
        children: [
          // Top half: Background image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 4.5,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background2.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Stack(
                children: [
                  Positioned(
                    top: 50.0,
                    left: 30.0,
                    child: Image(
                      image: AssetImage('assets/images/logo_only_white.png'),
                      width: 20.0,
                      height: 20.0,
                    ),
                  ),
                  Positioned(
                    top: 95.0,
                    left: 30.0,
                    child: Text(
                      'Selamat datang!',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        color: Color(0xffE7E8E3),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 125.0,
                    left: 30.0,
                    child: Text(
                      'Silakan mendaftar untuk melanjutkan',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                        color: Color(0xffE7E8E3),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Bottom half: white background
          Positioned(
            bottom: 110,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 1.55,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                color: const Color(0xffE7E8E3),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 30.0, right: 30.0, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      const SizedBox(height: 16),
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
                      const SizedBox(height: 16),
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
                      const SizedBox(height: 16),
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
                      const SizedBox(height: 16),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText:
                              'Deskripsi (Nama tumbuhan/ keterangan lainnya)',
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
                      const SizedBox(height: 16),
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
                      const SizedBox(height: 16),
                      TextFormField(
                        obscureText: obscureText,
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
                              obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: const Color(0xFF3B614A),
                            ),
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      TextFormField(
                        obscureText: obscureText2,
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
                              obscureText2
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: const Color(0xFF3B614A),
                            ),
                            onPressed: () {
                              setState(() {
                                obscureText2 = !obscureText2;
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      GestureDetector(
                        onTap: () {
                          // Handle login logic here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OtpVerificationPage(
                                emailAddress: 'test@test.com',
                              ),
                            ),
                          );
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
                              'Daftar',
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
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 110,
            child: Container(
              color: const Color(0xffE7E8E3),
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    // Handle "Login" click (navigate to another screen)
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 50.0, right: 30.0),
                    child: Text(
                      'Sudah punya akun?',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w300,
                        color: Color(0xFF3B614A),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
