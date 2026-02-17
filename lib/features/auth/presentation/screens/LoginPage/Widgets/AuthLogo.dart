

import 'package:flutter/material.dart';


import '../../../../../../l10n/arb/app_localizations.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(Icons.public, size: 64, color: Colors.blue),
        const SizedBox(height: 12),
        Text(
          AppLocalizations.of(context)!.app_name,
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}