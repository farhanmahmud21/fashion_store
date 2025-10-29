import 'package:fashion_store/feature/authentication/controllers/onboardingController.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DotNavigation extends StatelessWidget {
  const DotNavigation({super.key, required this.controller});

  final Onboardingcontroller controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      effect: ExpandingDotsEffect(),
      controller: controller.pageController,
      onDotClicked: controller.changedot,
      count: 3,
    );
  }
}
