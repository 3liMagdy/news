

import 'package:flutter/material.dart';

import '../../../../../../l10n/arb/app_localizations.dart';
import 'AuthTextField.dart';
import 'PrimaryButton.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthTextField(label: AppLocalizations.of(context)!.auth_email),
        const SizedBox(height: 16),
        AuthTextField(label: AppLocalizations.of(context)!.auth_password, obscure: true),
        const SizedBox(height: 12),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: Text(AppLocalizations.of(context)!.auth_forgot_password),
          ),
        ),
        const SizedBox(height: 24),
        PrimaryButton(text: AppLocalizations.of(context)!.auth_sign_in,),
      ],
    );
  }
}