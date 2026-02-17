import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:news/features/auth/presentation/bloc/auth_state.dart';

import '../../../../../l10n/arb/app_localizations.dart';
import '../LoginPage/Widgets/AuthFooter.dart';
import '../LoginPage/Widgets/AuthLogo.dart';
import '../SendAutoPayPage/SendAutoPayPage.dart';
import 'Widgets/RegisterForm.dart';


class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc=context.read<AuthBloc>();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthLoading) {
                CircularProgressIndicator();
              }
              if (state is AuthAuthenticated) {
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => SendAutoPayPage(email: state.user.email,),));
              }
              if (state is AuthError) {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(state.message)));
                    }
                },
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),
                const AuthLogo(),
                const SizedBox(height: 32),
                RegisterForm(),
                const SizedBox(height: 24),
                const SizedBox(height: 24),
                AuthFooter(
                  textbutton: AppLocalizations.of(context)!.auth_sign_in,
                  text: AppLocalizations.of(context)!.auth_have_account,
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}