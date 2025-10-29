import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Onboardingcontroller extends GetxController {
  static Onboardingcontroller get instance => Get.find();
  PageController pageController = PageController();
  RxInt currentIndex = 0.obs;

  void changedot(index) {
    currentIndex.value = index;
    pageController.jumpToPage(index);
  }

  void updateDot(index) {
    currentIndex.value = index;
  }

  void nextButton(index) {
    if (currentIndex.value < 2) {
      currentIndex.value++;
      pageController.jumpToPage(currentIndex.value);
    } else {}
  }

  void skip() {
    if (currentIndex.value < 2) {
      currentIndex.value = 2;
      pageController.jumpToPage(currentIndex.value);
    }
  }
}
