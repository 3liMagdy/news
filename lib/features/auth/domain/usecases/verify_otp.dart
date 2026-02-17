import '../repositories/auth_repository.dart';

class VerifyOtp {
  final AuthRepository repo;

  VerifyOtp(this.repo);

  Future<bool> call(String email, String otp) {
    return repo.verifyOtp(email: email, otp: otp);
  }
}