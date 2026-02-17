import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/datasources/language_cache_helper.dart';
import 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(const ChangeLocaleState(null));

  Future<void> getSavedLocale() async {
    final String? cachedLanguageCode = await LanguageCacheHelper().getCachedLanguageCode();
    if (cachedLanguageCode != null) {
      emit(ChangeLocaleState(Locale(cachedLanguageCode)));
    }
  }

  Future<void> changeLocale(String languageCode) async {
    await LanguageCacheHelper().cacheLanguageCode(languageCode);
    emit(ChangeLocaleState(Locale(languageCode)));
  }
}
