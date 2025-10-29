import 'package:fashion_store/feature/authentication/screens/Login/widget/formWidget.dart';
import 'package:fashion_store/feature/authentication/screens/Login/widget/signupWidget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back!',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'Sign in to continue shopping',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(height: 30),
              formWidget(),
              SizedBox(height: 10),
              signupWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
