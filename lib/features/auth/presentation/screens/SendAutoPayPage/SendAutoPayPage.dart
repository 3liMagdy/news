import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:news/features/auth/presentation/bloc/auth_state.dart';

import '../../bloc/auth_event.dart';
import '../LoginPage/Widgets/AuthLogo.dart';
import '../LoginPage/Widgets/PrimaryButton.dart';
import '../VerifyAutoPayPage/OtpPage.dart';
import 'Widgets/SendAutoPayHeader.dart';

class SendAutoPayPage extends StatelessWidget {
  final String email;

  const SendAutoPayPage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthLoading) {}
              if (state is OtpSent) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpPage(email: state.email),
                  ),
                );
              }
              if (state is AuthError) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(state.message)));
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),
                const AuthLogo(),
                const SizedBox(height: 32),
                const SendAutoPayHeader(),
                const SizedBox(height: 32),
                PrimaryButton(
                  text: 'Send AutoPay',
                  onPressed: () {
                    context.read<AuthBloc>().add(SendOtpRequested(email));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
