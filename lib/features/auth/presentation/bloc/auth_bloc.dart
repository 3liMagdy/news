import 'package:bloc/bloc.dart';

import '../../domain/usecases/login_user.dart';
import '../../domain/usecases/register_user.dart';
import '../../domain/usecases/send_otp.dart';
import '../../domain/usecases/verify_otp.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUser loginUser;
  final RegisterUser registerUser;
  final VerifyOtp verifyOtp;
  final SendOtp sendOtp;

  AuthBloc({
    required this.loginUser,
    required this.registerUser,
    required this.verifyOtp, required this.sendOtp,
  }) : super(AuthInitial()) {
    on<LoginRequested>(_onLogin);
    on<RegisterRequested>(_onRegister);
    on<SendOtpRequested>(_onSendOtp);
    on<VerifyOtpRequested>(_onVerifyOtp);
    on<LogoutRequested>(_onLogout);
  }

  Future<void> _onLogin(LoginRequested event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final user = await loginUser(event.email, event.password);
      emit(AuthAuthenticated(user));
    } catch (e) {
      emit(AuthError("Login failed"));
    }
  }

  Future<void> _onRegister(
    RegisterRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    try {
      final user = await registerUser(
        email: event.email,
        password: event.password,
        role: '',
        username: event.name,
        phone: '',
      );
      emit(AuthAuthenticated(user));
    } catch (e) {
      emit(AuthError("Register failed"));
    }
  }

  void _onLogout(LogoutRequested event, Emitter<AuthState> emit) {
    emit(AuthUnauthenticated());
  }



  Future<void> _onSendOtp(
      SendOtpRequested event,
      Emitter<AuthState> emit,
      ) async {
    emit(AuthLoading());
    try {
      await sendOtp(event.email);
      emit(OtpSent(event.email));

    } catch (e) {
      emit(AuthError("Failed to send OTP"));
    }
  }



  Future<void> _onVerifyOtp(
    VerifyOtpRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(OtpVerifying());
    try {
      final isValid = await verifyOtp(event.email, event.otp);
      if (isValid) {
        emit(OtpVerified());
      } else {
        emit(OtpVerificationFailed("Invalid OTP"));
      }
    } catch (e) {
      emit(OtpVerificationFailed('OTP verification failed'));
    }
  }
}
