import '../repositories/auth_repository.dart';

class SendOtp {
  final AuthRepository repo;

  SendOtp(this.repo);

  Future<void> call(String email) {
    return repo.sendOtp(email);
  }
}
