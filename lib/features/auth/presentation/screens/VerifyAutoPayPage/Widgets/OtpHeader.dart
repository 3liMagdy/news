
import 'package:flutter/material.dart';

class OtpHeader extends StatelessWidget {
  const OtpHeader({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Verification Code',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'Please enter the 4-digit code sent to your email',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}