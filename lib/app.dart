import 'package:fashion_store/feature/authentication/screens/onboarding/onboarding.dart';
import 'package:fashion_store/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class FashionStore extends StatelessWidget {
  const FashionStore({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: UAppTheme.lightTheme,
      darkTheme: UAppTheme.darkTheme,
      home: OnboardingScreen(),
    );
  }
}
