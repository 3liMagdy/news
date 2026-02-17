
import 'package:flutter/material.dart';

import 'SocialIcon.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SocialIcon(Icons.g_mobiledata),
            SizedBox(width: 16),
            SocialIcon(Icons.facebook),
            SizedBox(width: 16),
            SocialIcon(Icons.apple),
          ],
        ),
      ],
    );
  }
}