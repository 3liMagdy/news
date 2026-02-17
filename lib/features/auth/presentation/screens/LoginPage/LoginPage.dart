import 'package:flutter/material.dart';

import '../../../../../l10n/arb/app_localizations.dart';
import 'Widgets/AuthFooter.dart';
import 'Widgets/AuthLogo.dart';
import 'Widgets/LoginForm.dart';
import 'Widgets/SocialLogin.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),
              const AuthLogo(),
              const SizedBox(height: 32),
              const LoginForm(),
              const SizedBox(height: 24),
              const SocialLogin(),
              const SizedBox(height: 24),
              const SizedBox(height: 24),
              AuthFooter(
                text: AppLocalizations.of(context)!.auth_dont_have_account,
                textbutton: AppLocalizations.of(context)!.auth_register_action,
                onPressed: (){

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
