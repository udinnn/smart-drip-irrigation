import 'package:demeter_cd_sdi/homepage.dart';
import 'package:flutter/material.dart';

class OtpVerificationPage extends StatefulWidget {
  final String emailAddress;

  const OtpVerificationPage({super.key, required this.emailAddress});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
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
              'Verifikasi OTP',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                color: Color(0xFF3B614A),
              ),
            ),
            const SizedBox(height: 14),
            Text.rich(
              TextSpan(
                text: 'Kode OTP telah dikirim ke ',
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'Inter',
                  color: Color(0xFF3B614A),
                ),
                children: [
                  TextSpan(
                    text: widget.emailAddress,
                    style: const TextStyle(
                      fontSize: 12,
                      fontFamily: 'Inter',
                      color: Color(0xFF3B614A),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text: '.',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Inter',
                      color: Color(0xFF3B614A),
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: TextField(
                      controller: otpControllers[index],
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        counterText: '',
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF3B614A),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.zero),
                        ),
                        labelStyle: TextStyle(
                          color: Color(0xFF3B614A),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                // Handle "Register" click (navigate to another screen)
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OtpVerificationPage(
                      emailAddress: 'test@test.com',
                    ),
                  ),
                );
              },
              child: const Text(
                'Kirim ulang kode',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3B614A),
                    decoration: TextDecoration.underline),
              ),
            ),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                // Validate the OTP here
                // final enteredOtp =
                //     otpControllers.map((controller) => controller.text).join();
                // print('Entered OTP: $enteredOtp');
                // Implement your logic for verifying the OTP
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Homepage(),
                  ),
                );
              },
              child: Container(
                height: 50,
                width: 900,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0), // Add this line
                  gradient: const LinearGradient(
                    colors: [Color(0xFF3B614A), Color(0xFF123456)],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Verfikasi',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color(0xffE7E8E3),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
