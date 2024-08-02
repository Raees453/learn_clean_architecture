import 'package:flutter/material.dart';
import 'package:learn_flutter_clean_architecture/core/common/under_construction_screen.dart';
import 'package:learn_flutter_clean_architecture/src/on_boarding/presentation/on_boarding_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingScreen.routeName:
      return _pageBuilder((_) => const OnBoardingScreen());

    default:
      return _pageBuilder((_) => const UnderConstructionScreen());
  }
}

PageRouteBuilder<Widget> _pageBuilder(
  Widget Function(BuildContext) page, {
  RouteSettings? settings,
}) {
  return PageRouteBuilder(
    settings: settings,
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: animation,
      child: child,
    ),
    pageBuilder: (context, __, ___) => page(context),
  );
}
