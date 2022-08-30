import 'package:asos_app/app/di.dart';
import 'package:asos_app/presentation/onBoarding/on_boarding_view.dart';
import 'package:asos_app/presentation/resources/strings_manager.dart';
import 'package:asos_app/presentation/countries_page/select_country.dart';
import 'package:asos_app/presentation/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import '../main/main_screen.dart';

class Routes {
  static const String splashRoute = "/";
  static const String mainRoute = "/main";
  static const String countries = "/countries";
  static const String onBoardingRoute="/onBoardingRoute";
  static const String subCategoryRoute="/subCategoryRoute";
  


}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.mainRoute:
        initMainModule();
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.countries:
        return MaterialPageRoute(builder: (_) =>  CountryList());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings
                    .noRouteFound), // todo move this string to strings manager
              ),
              body: const Center(
                  child: Text(AppStrings
                      .noRouteFound)), // todo move this string to strings manager
            ));
  }
}
