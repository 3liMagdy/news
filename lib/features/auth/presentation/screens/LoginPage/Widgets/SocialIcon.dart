

import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final IconData icon;


  const SocialIcon(this.icon, {super.key});


  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: Colors.grey.shade200,
      child: Icon(icon, color: Colors.black),
    );
  }
}