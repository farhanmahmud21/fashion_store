import 'package:fashion_store/feature/authentication/controllers/onboardingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({super.key, required this.controller});

  final Onboardingcontroller controller;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ElevatedButton(
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
        child: controller.currentIndex.value == 2
            ? Text('Get Started')
            : Text('Next'),
      ),
    );
  }
}
