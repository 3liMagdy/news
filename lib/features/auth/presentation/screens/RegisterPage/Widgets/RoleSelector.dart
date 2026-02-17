

import 'package:flutter/material.dart';

import '../../../../../../l10n/arb/app_localizations.dart';
import 'RoleOption.dart';


class RoleSelector extends StatelessWidget {
  const RoleSelector({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppLocalizations.of(context)!.auth_role_prompt, style: const TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        Row(
          children: [
            RoleOption(label: AppLocalizations.of(context)!.auth_role_reporter),
            const SizedBox(width: 16),
            RoleOption(label: AppLocalizations.of(context)!.auth_role_visitor),
          ],
        ),
      ],
    );
  }
}