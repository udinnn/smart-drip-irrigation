import 'package:demeter_cd_sdi/sendotpreset_page.dart';
import 'package:flutter/material.dart';

class ForgotPassPage extends StatefulWidget {
  const ForgotPassPage({super.key, required this.title});
  final String title;

  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState extends State<ForgotPassPage> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Top half: Background image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 2,
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
                    top: 135.0,
                    left: 30.0,
                    child: Image(
                      image: AssetImage('assets/images/logo_only_white.png'),
                      width: 40.0,
                      height: 40.0,
                    ),
                  ),
                  Positioned(
                    top: 190.0,
                    left: 30.0,
                    child: Text(
                      'Reset password',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        color: Color(0xffE7E8E3),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 230.0,
                    left: 30.0,
                    child: Text(
                      'Masukkan email untuk melanjutkan',
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
            bottom: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 2,
            child: Container(
              color: const Color(0xffE7E8E3),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 30.0, right: 30.0, bottom: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Masukkan Email',
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF447055)),
                      textAlign: TextAlign.left,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          color: Color(0xFF447055),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                        ),
                        filled: true,
                        fillColor: const Color(0xffE7E8E3),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Color(0xFF447055),
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Color(0xFF447055),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: () {
                        // Handle reset password logic here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const OtpVerificationResetPage(
                              phoneNumber: 'asade@kontol.com',
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0xffE7E8E3),
                        backgroundColor: const Color(0xFF447055),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        minimumSize: const Size(350, 50),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 12),
                      ),
                      child: const Text(
                        'Reset Password',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Color(0xffE7E8E3)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                // Handle "Homepage" click (navigate to another screen)
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Padding(
                padding: EdgeInsets.only(bottom: 70.0, right: 30.0),
                child: Text(
                  'Kembali ke halaman utama',
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF447055),
                    decoration: TextDecoration.underline,
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
