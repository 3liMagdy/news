import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../features/auth/presentation/screens/RegisterPage/RegisterPage.dart';

import '../../../../l10n/arb/app_localizations.dart';
import '../cubit/locale_cubit.dart';


class LanguageSelectionPage extends StatelessWidget {
  const LanguageSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final supportedLocales = [
      {'code': 'en', 'name': 'English'},
      {'code': 'ar', 'name': 'العربية'},
      {'code': 'fr', 'name': 'Français'},
      {'code': 'de', 'name': 'Deutsch'},
      {'code': 'es', 'name': 'Español'},
      {'code': 'it', 'name': 'Italiano'},
      {'code': 'tr', 'name': 'Türkçe'},
      {'code': 'ru', 'name': 'Русский'},
      {'code': 'zh', 'name': '中文'},
      {'code': 'ja', 'name': '日本語'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.onboarding_choose_language),
      ),
      body: ListView.builder(
        itemCount: supportedLocales.length,
        itemBuilder: (context, index) {
          final language = supportedLocales[index];
          return ListTile(
            title: Text(language['name']!),
            onTap: () {
              context.read<LocaleCubit>().changeLocale(language['code']!);
              // Navigation handled by main.dart based on state change
            },
          );
        },
      ),
    );
  }
}
