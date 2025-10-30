import 'package:fashion_store/feature/authentication/controllers/onboardingController.dart';
import 'package:fashion_store/feature/authentication/screens/onboarding/widgets/dotNavigation.dart';
import 'package:fashion_store/feature/authentication/screens/onboarding/widgets/onBoardingNextButton.dart';
import 'package:fashion_store/feature/authentication/screens/onboarding/widgets/onbordingPage.dart';
import 'package:fashion_store/utils/constrains/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Onboardingcontroller controller = Get.put(Onboardingcontroller());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updateDot,
            children: [
              OnBoardingPage(
                animationName: UImages.animation1,
                title: 'Discover Latest Trends',
                subtitle:
                    'Explore the newest fashion trends and find your unique style',
              ),
              OnBoardingPage(
                animationName: UImages.animation2,
                title: 'Discover Latest Trends',
                subtitle:
                    'Explore the newest fashion trends and find your unique style',
              ),
              OnBoardingPage(
                animationName: UImages.animation3,
                title: 'Discover Latest Trends',
                subtitle:
                    'Explore the newest fashion trends and find your unique style',
              ),
            ],
          ),
          Positioned(
            bottom: 200, // Remove conflicting top value
            left: 160, // Center horizontally
            right: 150,
            child: DotNavigation(controller: controller),
          ),

          Positioned(
            bottom: 10,
            right: 10,
            child: onBoardingNextButton(controller: controller),
          ),

          Positioned(
            bottom: 10,
            child: Obx(
              () => TextButton(
                onPressed: () {
                  controller.skip();
                },
                child: controller.currentIndex.value == 2
                    ? SizedBox()
                    : Text('Skip'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
