import 'package:flutter/material.dart';
import 'package:learn_flutter_clean_architecture/core/res/assets.gen.dart';
import 'package:lottie/lottie.dart';

class UnderConstructionScreen extends StatelessWidget {
  const UnderConstructionScreen({super.key});

  static const String routeName = '/under-construction';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.onBoardingBackground.path),
          ),
        ),
        child: SafeArea(
          child: Lottie.asset(Assets.lottie.pageUnderConstruction),
        ),
      ),
    );
  }
}
