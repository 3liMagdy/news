

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/auth_bloc.dart';
import '../../bloc/auth_event.dart';
import '../../bloc/auth_state.dart';
import '../LoginPage/Widgets/AuthLogo.dart';
import '../LoginPage/Widgets/PrimaryButton.dart';
import 'Widgets/OtpHeader.dart';
import 'Widgets/OtpInputs.dart';

class OtpPage extends StatelessWidget {
  final String email;
  final TextEditingController otpController = TextEditingController();

  OtpPage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is OtpVerified) {
                // TODO: Navigate to Home
              }
              if (state is OtpVerificationFailed) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message)),
                );
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 40),
                const AuthLogo(),
                const SizedBox(height: 32),
                const OtpHeader(),
                const SizedBox(height: 24),
                OtpInputs( otpController),
                const SizedBox(height: 32),
                PrimaryButton(
                  text: 'Verify',
                  onPressed: () {
                    context.read<AuthBloc>().add(
                      VerifyOtpRequested(
                        email: email,
                        otp: otpController.text,
                      ),
                    );
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