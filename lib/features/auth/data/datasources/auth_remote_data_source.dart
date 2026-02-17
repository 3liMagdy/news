import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login(String email, String password);

  Future<UserModel> register({
    required String username,
    required String email,
    required String password,
    required String role,
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
