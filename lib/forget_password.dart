import 'package:flutter/material.dart';

class ForgotUsernameOrPasswordPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Username or Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your email address or phone number and we\'ll send you a link to get back into your account.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'Email address or phone number',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle sending login link here
                // You can use the value in emailController.text
                // to send the link to the provided email or phone number
              },
              child: Text('Send Login Link'),
            ),
          ],
        ),
      ),
    );
  }
}
