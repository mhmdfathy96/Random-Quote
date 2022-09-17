import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/app_strings.dart';
import '../../features/random_quote/presentation/cubit/random_quote_cubit.dart';
import '../../features/random_quote/presentation/screens/quote_screen.dart';
import 'package:project_template/src/injector_container.dart' as di;

import '../../features/splash/presentation/screens/splash_screen.dart';

class Routes {
  static const String initialRoute = "/";
  static const String randomQuoteRoute = "/randomQuoteRoute";
}

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen(),);
          case Routes.randomQuoteRoute:
        return MaterialPageRoute(builder: (_) => BlocProvider(
          create: (_)=> di.getIt<RandomQuoteCubit>(),
          child: const QuoteScreen(),));
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
      builder: ((context) => const Scaffold(
            body: Center(
              child: Text(AppStrings.noRouteFound),
            ),
          )),
    );
  }
}
