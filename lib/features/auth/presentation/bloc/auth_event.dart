

abstract class AuthEvent {}

class LoginRequested extends AuthEvent {
  final String email;
  final String password;
  LoginRequested(this.email, this.password);
}


class RegisterRequested extends AuthEvent {
  final String name;
  final String email;
  final String password;
  RegisterRequested(this.name, this.email, this.password);
}
class SendOtpRequested extends AuthEvent {
  final String email;
  SendOtpRequested(this.email);
}

class VerifyOtpRequested extends AuthEvent {
  final String email;
  final String otp;

  VerifyOtpRequested({
    required this.email,
    required this.otp,
  });
}

class LogoutRequested extends AuthEvent {}