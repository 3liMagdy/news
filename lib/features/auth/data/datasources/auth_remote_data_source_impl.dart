import 'dart:async';
import 'auth_remote_data_source.dart';
import '../models/user_model.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<UserModel> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 1));

    return UserModel(
      id: "1",
      username: "John Smith",
      email: email,
      phone: "+20123456789",
      profileImage: null,
    );
  }

  @override
  Future<UserModel> register({
    required String username,
    required String email,
    required String password,
    required String role,
    String? phone,
  }) async {
    await Future.delayed(const Duration(seconds: 1));

    return UserModel(
      id: "2",
      username: username,
      email: email,
      phone: phone,
      profileImage: null,
    );
  }

  @override
  Future<void> sendOtp(String email) async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Future<bool> verifyOtp({
    required String email,
    required String otp,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
    return otp == "1234";
  }

  @override
  Future<void> resetPassword({
    required String email,
    required String newPassword,
  }) async {
    await Future.delayed(const Duration(seconds: 1));
  }
}