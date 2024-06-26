import 'package:flutter/material.dart';

class OtpVerificationResetPage extends StatefulWidget {
  final String emailAddress;

  const OtpVerificationResetPage({super.key, required this.emailAddress});

  @override
  State<OtpVerificationResetPage> createState() =>
      _OtpVerificationResetPageState();
}

class _OtpVerificationResetPageState extends State<OtpVerificationResetPage> {
  final List<TextEditingController> otpControllers =
      List.generate(4, (_) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE7E8E3),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/OTP.png'),
              height: 200,
              width: 200,
            ),
            const SizedBox(height: 70),
            const Text(
              'Reset Password',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                color: Color(0xFF447055),
              ),
            ),
            const SizedBox(height: 14),
            Text.rich(
              TextSpan(
                text: 'Link reset password telah dikirim ke ',
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'Inter',
                  color: Color(0xFF447055),
                ),
                children: [
                  TextSpan(
                    text: widget.emailAddress,
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Inter',
                      color: Color(0xFF447055),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text: '.',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Inter',
                      color: Color(0xFF447055),
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // handle reset password
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color(0xffE7E8E3),
                backgroundColor: const Color(0xFF447055),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                minimumSize: const Size(350, 50),
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              child: const Text(
                'Ke halaman utama',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xffE7E8E3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
