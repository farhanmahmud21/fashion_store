import 'package:fashion_store/feature/shop/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  NavigationController get instance => Get.find();
  RxInt currentIndex = 0.obs;
  void currentPage(index) {
    currentIndex.value = index;
  }

  List screens = [
    HomeScreen(),
    Text('Shopping'),
    Text('Wishlist'),
    Text('Profile'),
  ];
}
