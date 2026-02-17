import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/localization/presentation/screens/language_selection_page.dart';
import 'package:news/core/services/session_manager.dart';
import 'package:news/features/auth/domain/usecases/send_otp.dart';
import 'package:news/features/auth/domain/usecases/verify_otp.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/auth/data/datasources/auth_remote_data_source_impl.dart';
import 'features/auth/data/repositories/auth_repository_impl.dart';
import 'features/auth/domain/usecases/login_user.dart';
import 'features/auth/domain/usecases/register_user.dart';
import 'features/auth/presentation/bloc/auth_bloc.dart';
import 'features/auth/presentation/screens/RegisterPage/RegisterPage.dart';
import 'core/localization/presentation/cubit/locale_cubit.dart';
import 'core/localization/presentation/cubit/locale_state.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'l10n/arb/app_localizations.dart';




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final sessionManager = SessionManager(prefs);

  final remote = AuthRemoteDataSourceImpl();
  final repository = AuthRepositoryImpl(remote);
  
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthBloc(
            loginUser: LoginUser(repository),
            registerUser: RegisterUser(repository),
            verifyOtp: VerifyOtp(repository),
            sendOtp: SendOtp(repository),

          ),
        ),
        BlocProvider(
          create: (context) => LocaleCubit()..getSavedLocale(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, LocaleState>(
      builder: (context, state) {
        return MaterialApp(
          locale: state.locale,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          home: state.locale == null ? const LanguageSelectionPage() : const RegisterPage(),
        );
      },
    );
  }
}
