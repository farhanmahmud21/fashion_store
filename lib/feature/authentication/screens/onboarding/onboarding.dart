import 'package:fashion_store/feature/authentication/controllers/onboardingController.dart';
import 'package:fashion_store/feature/authentication/screens/onboarding/widgets/onbordingPage.dart';
import 'package:fashion_store/utils/constrains/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
            child: SmoothPageIndicator(
              effect: ExpandingDotsEffect(),
              controller: controller.pageController,
              onDotClicked: controller.changedot,
              count: 3,
            ),
          ),

          Positioned(
            bottom: 10,
            right: 10,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                foregroundColor: Colors.white,
              ),

              onPressed: () {
                controller.nextButton(controller.currentIndex.value);
              },
              child: Text('Next'),
            ),
          ),

          Positioned(
            bottom: 10,
            child: TextButton(
              onPressed: () {
                controller.skip();
              },
              child: Text('Skip'),
            ),
          ),
        ],
      ),
    );
  }
}
