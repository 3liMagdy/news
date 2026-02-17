

import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class LoginUser {
  final AuthRepository repo;

  LoginUser(this.repo);

  Future<UserEntity> call(String email, String password) {
    return repo.login(email, password);
  }
}