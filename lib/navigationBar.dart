import 'package:fashion_store/feature/authentication/controllers/navigationController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});
  final NavigationController controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: Colors.deepOrangeAccent.withValues(alpha: 0.1),
          indicatorColor: Colors.deepOrangeAccent.shade100,
          elevation: 0.6,
          onDestinationSelected: controller.currentPage,
          selectedIndex: controller.currentIndex.value,
          height: 60,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(
              icon: Icon(Icons.shopping_bag),
              label: 'Shopping',
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite),
              label: 'Wishlist',
            ),

            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),

      body: Obx(() => controller.screens[controller.currentIndex.value]),
    );
  }
}
