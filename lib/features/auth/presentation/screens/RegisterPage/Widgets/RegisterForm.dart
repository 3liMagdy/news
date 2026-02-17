import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../l10n/arb/app_localizations.dart';
import '../../../bloc/auth_bloc.dart';
import '../../../bloc/auth_event.dart';
import '../../LoginPage/Widgets/AuthTextField.dart';
import '../../LoginPage/Widgets/PrimaryButton.dart';
import 'RoleSelector.dart';


class RegisterForm extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthTextField(label: AppLocalizations.of(context)!.auth_username, controller: nameController),
        const SizedBox(height: 16),
        AuthTextField(label: AppLocalizations.of(context)!.auth_email, controller: emailController),
        const SizedBox(height: 16),
        AuthTextField(label: AppLocalizations.of(context)!.auth_phone),
        const SizedBox(height: 16),
        AuthTextField(
          label: AppLocalizations.of(context)!.auth_password,
          obscure: true,
          controller: passwordController,
        ),
        const SizedBox(height: 16),
        RoleSelector(),
        const SizedBox(height: 24),
        PrimaryButton(
          text: AppLocalizations.of(context)!.auth_sign_up,
          onPressed: () {
            context.read<AuthBloc>().add(
              RegisterRequested(
                nameController.text,
                emailController.text,
                passwordController.text,
              ),
            );
          },
        ),
      ],
    );
  }
}
