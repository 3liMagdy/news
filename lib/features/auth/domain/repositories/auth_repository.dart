import '../entities/user_entity.dart';

abstract class AuthRepository {
  Future<UserEntity> login(String email, String password);

  Future<UserEntity> register({
    required String username,
    required String email,
    required String password,
    required String role, // media reporter or visitor
    String? phone,
  });

  Future<void> sendOtp(String email);

  Future<bool> verifyOtp({
    required String email,
    required String otp,
  });

  Future<void> resetPassword({
    required String email,
    required String newPassword,
  });
}