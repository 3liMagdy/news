import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remote;

  AuthRepositoryImpl(this.remote);

  @override
  Future<UserEntity> login(String email, String password) {
    return remote.login(email, password);
  }

  @override
  Future<UserEntity> register({
    required String username,
    required String email,
    required String password,
    required String role,
    String? phone,
  }) {
    return remote.register(
      username: username,
      email: email,
      password: password,
      role: role,
      phone: phone,
    );
  }

  @override
  Future<void> sendOtp(String email) {
    return remote.sendOtp(email);
  }

  @override
  Future<bool> verifyOtp({
    required String email,
    required String otp,
  }) {
    return remote.verifyOtp(email: email, otp: otp);
  }

  @override
  Future<void> resetPassword({
    required String email,
    required String newPassword,
  }) {
    return remote.resetPassword(
      email: email,
      newPassword: newPassword,
    );
  }
}