import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsly/core/dependency_injection/di.dart';
import 'package:newsly/core/routes/app_routes.dart';
import 'package:newsly/features/bookmarks/presentation/view_model/cubit/book_marks_cubit.dart';
import 'package:newsly/features/settings/presentation/view_model/settings_cubit/settings_cubit.dart';
import 'package:newsly/features/settings/presentation/view_model/settings_cubit/settings_state.dart';
import 'package:newsly/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => getIt<SettingsCubit>()),
          BlocProvider(create: (context) => getIt<BookMarksCubit>()),
        ],
        child: BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            return MaterialApp.router(
              locale: Locale(state.locale),
              theme: ThemeData(useMaterial3: false,fontFamily: 'DMSerifText'),
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              routerConfig: router,
            );
          },
        ),
      ),
    );
  }
}
