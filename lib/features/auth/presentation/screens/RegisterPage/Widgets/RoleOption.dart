

import 'package:flutter/material.dart';

class RoleOption extends StatelessWidget {
  final String label;
  const RoleOption({super.key, required this.label});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<int>(value: 0, groupValue: 0, onChanged: null),
        Text(label),
      ],
    );
  }
}