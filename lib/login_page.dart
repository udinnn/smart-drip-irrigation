import 'package:demeter_cd_sdi/forgotpass_page.dart';
import 'package:demeter_cd_sdi/sendotp_page.dart';
import 'package:demeter_cd_sdi/signup_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildTopHalf(),
          _buildBottomHalf(),
          _buildForgotPasswordButton(),
          _buildRegisterButton(),
        ],
      ),
    );
  }

  Widget _buildTopHalf() {
    return Positioned(
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
                'Selamat datang!',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFE7E8E3),
                ),
              ),
            ),
            Positioned(
              top: 230.0,
              left: 30.0,
              child: Text(
                'Silakan masuk untuk melanjutkan',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                  color: Color(0xFFE7E8E3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomHalf() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      height: MediaQuery.of(context).size.height / 2,
      child: Container(
        color: const Color(0xFFE7E8E3),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 120.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildEmailField(),
              const SizedBox(height: 16),
              _buildPasswordField(),
              const SizedBox(height: 24),
              _buildLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: const TextStyle(
          color: Color(0xFF3B614A),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
        filled: true,
        fillColor: const Color(0xFFE7E8E3),
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
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: const TextStyle(
          color: Color(0xFF3B614A),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w300,
        ),
        filled: true,
        fillColor: const Color(0xFFE7E8E3),
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
            obscureText ? Icons.visibility : Icons.visibility_off,
            color: const Color(0xFF3B614A),
          ),
          onPressed: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return GestureDetector(
      onTap: () {
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
          borderRadius: BorderRadius.circular(10.0),
          gradient: const LinearGradient(
            colors: [Color(0xFF3B614A), Color(0xFF123456)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              color: Color(0xFFE7E8E3),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForgotPasswordButton() {
    return Align(
      alignment: Alignment.bottomRight,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ForgotPassPage(),
            ),
          );
        },
        child: const Padding(
          padding: EdgeInsets.only(bottom: 70.0, right: 30.0),
          child: Text(
            'Lupa Password?',
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
    );
  }

  Widget _buildRegisterButton() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const SignupPage(),
            ),
          );
        },
        child: const Padding(
          padding: EdgeInsets.only(bottom: 70.0, left: 30.0),
          child: Text(
            'Belum punya akun?',
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
    );
  }
}
