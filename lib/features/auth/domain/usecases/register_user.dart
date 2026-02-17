import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class RegisterUser {
  final AuthRepository repo;

  RegisterUser(this.repo);

  Future<UserEntity> call({
    required String username,
    required String email,
    required String password,
    required String role,
    String? phone,
    String? oTB

  }) {
    return repo.register(
      username: username,
      email: email,
      password: password,
      role: role,
      phone: phone,

    );
  }
}