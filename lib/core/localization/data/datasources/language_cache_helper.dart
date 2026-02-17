import 'package:shared_preferences/shared_preferences.dart';

class LanguageCacheHelper {
  static const String _cachedLanguageCode = "CACHED_LANGUAGE_CODE";

  Future<void> cacheLanguageCode(String languageCode) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(_cachedLanguageCode, languageCode);
  }

  Future<String?> getCachedLanguageCode() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    final cachedLanguageCode = sharedPreferences.getString(_cachedLanguageCode);
    
    if (cachedLanguageCode != null) {
      return cachedLanguageCode;
    } else {
      return null;
    }
  }
}
