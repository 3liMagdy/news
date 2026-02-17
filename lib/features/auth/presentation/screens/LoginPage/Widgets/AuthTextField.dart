

import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String label;
  final bool obscure;
  final TextEditingController? controller;

  const AuthTextField({super.key, required this.label, this.obscure = false, this.controller});


  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: label,
        border: const UnderlineInputBorder(),
      ),
    );
  }
}