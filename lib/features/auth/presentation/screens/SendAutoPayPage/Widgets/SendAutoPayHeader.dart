



import 'package:flutter/material.dart';

class SendAutoPayHeader extends StatelessWidget {
  const SendAutoPayHeader({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(Icons.verified_user, size: 64, color: Colors.blue),
        SizedBox(height: 16),
        Text(
          'AutoPay Verification',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'To continue, we need to verify your account using AutoPay.',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}