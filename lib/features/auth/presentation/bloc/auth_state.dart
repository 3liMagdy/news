import '../../domain/entities/user_entity.dart';

abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthAuthenticated extends AuthState {
  final UserEntity user;
  AuthAuthenticated(this.user);
}

class AuthUnauthenticated extends AuthState {}

class AuthError extends AuthState {
  final String message;
  AuthError(this.message);
}


class OtpSent extends AuthState {
  final String email;
  OtpSent(this.email);
}

class OtpVerifying extends AuthState {}


class OtpVerified extends AuthState {}

class OtpVerificationFailed extends AuthState {
  final String message;
  OtpVerificationFailed(this.message);
}


