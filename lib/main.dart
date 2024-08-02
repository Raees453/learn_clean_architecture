import 'package:flutter/material.dart';
import 'package:learn_flutter_clean_architecture/core/res/colors.dart';
import 'package:learn_flutter_clean_architecture/core/res/fonts.dart';
import 'package:learn_flutter_clean_architecture/core/services/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Education App',
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: const AppBarTheme(color: Colors.transparent, elevation: 0),
        fontFamily: Fonts.poppins,
        colorScheme: ColorScheme.fromSwatch(accentColor: AppColors.primaryColour),
      ),
      onGenerateRoute: generateRoute,
    );
  }
}
