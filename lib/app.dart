import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'src/config/locale/app_localizations_setup.dart';
import 'src/config/routes/app_routes.dart';
import 'src/config/themes/app_theme.dart';
import 'src/core/utils/app_strings.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          title: AppStrings.appName,
          locale: context.locale,
          localizationsDelegates: context.localizationDelegates,
          debugShowCheckedModeBanner: false,
          theme: appTheme(),
          onGenerateRoute: AppRoutes.onGenerateRoute,
          supportedLocales: AppLocalizationsSetup.supportedLocales,
        );
  }
}
