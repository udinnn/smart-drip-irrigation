import 'package:flutter/material.dart';

class ForgotPassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter your email address:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
                // Add your logic for handling the email input here
                // (e.g., validation, sending reset link, etc.).
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement your logic for sending a reset link here.
                // You can navigate to a confirmation page or show a snackbar.
              },
              child: Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}
