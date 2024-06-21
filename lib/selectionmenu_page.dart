import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'forgotpass_page.dart';

class StartMenu extends StatefulWidget {
  const StartMenu({super.key, required this.title});
  final String title;

  @override
  State<StartMenu> createState() => _StartMenuState();
}

class _StartMenuState extends State<StartMenu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/background1.png', // Replace with your image path
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30.0, top: 130.0),
                child: Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 50,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF447055),
                  ),
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 30.0, top: 210.0, right: 60),
                child: Text(
                  'Jelajahi aplikasi Smart Drip Irrigation dan temukan fitur-fitur yang anda butuhkan untuk keperluan pertanian anda!',
                  style: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF447055),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 60.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Handle login button press
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(
                              title: '',
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffE7E8E3),
                        side: const BorderSide(color: Color(0xFF447055)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(350, 50),
                      ),
                      child: const Text(
                        'Masuk',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF447055),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Handle signup button press
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignupPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffE7E8E3),
                        side: const BorderSide(color: Color(0xFF447055)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(350, 50),
                      ),
                      child: const Text(
                        'Daftar',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF447055),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          // Handle "Lupa Password?" click (navigate to another screen)
                          // You can use Navigator to navigate to the desired screen.
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPassPage(),
                            ),
                          );
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(top: 5.0, right: 25.0),
                          child: Text(
                            'Lupa Password?',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF447055),
                              decoration:
                                  TextDecoration.underline, // Add underline
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 40.0),
                          child: Text(
                            'Atau',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF447055), // 4183f3
                            ),
                          ),
                        ),
                        const SizedBox(
                            height:
                                10), // Add some space between text and button
                        ElevatedButton(
                          onPressed: () {
                            // Handle Google sign-in button press
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff4183f3),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Set a circular border
                            ),
                            minimumSize:
                                const Size(50, 60), // Adjust the size as needed
                          ),
                          child: const Image(
                            image: AssetImage('assets/images/google.png'),
                            width: 40,
                            height: 40,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
