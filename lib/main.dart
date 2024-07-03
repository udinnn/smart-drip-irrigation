import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';
import 'selectionmenu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Drip Irrigation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF3B614A)),
        useMaterial3: true,
      ),
      home: const StartupPage(),
    );
  }
}

class StartupPage extends StatelessWidget {
  const StartupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset(
            'assets/images/logo_white.png',
            scale: 7,
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Smart Drip',
                  style: TextStyle(
                    color: Color(0xFFE7E8E3),
                    fontSize: 8,
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  ' Irrigation',
                  style: TextStyle(
                    color: Color(0xFFE7E8E3),
                    fontSize: 8,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFF3B614A),
      nextScreen: const StartMenu(),
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
    );
  }
}
