import 'package:shared_preferences/shared_preferences.dart';

class SessionManager {
  static const String _keyUserId = 'user_id';
  static const String _keyUsername = 'username';
  static const String _keyEmail = 'user_email';
  static const String _keyIsLoggedIn = 'is_logged_in';

  final SharedPreferences _prefs;

  SessionManager(this._prefs);

  // Save user session
  Future<void> saveUserSession({
    required String id,
    required String username,
    required String email,
  }) async {
    await _prefs.setString(_keyUserId, id);
    await _prefs.setString(_keyUsername, username);
    await _prefs.setString(_keyEmail, email);
    await _prefs.setBool(_keyIsLoggedIn, true);
  }

  // Check if user is logged in
  bool isLoggedIn() {
    return _prefs.getBool(_keyIsLoggedIn) ?? false;
  }

  // Get user data
  Map<String, String?> getUserData() {
    return {
      'id': _prefs.getString(_keyUserId),
      'username': _prefs.getString(_keyUsername),
      'email': _prefs.getString(_keyEmail),
    };
  }

  // Clear session (logout)
  Future<void> clearSession() async {
    await _prefs.clear();
  }
}