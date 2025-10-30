import 'package:fashion_store/feature/authentication/screens/SignUp/widget/signinTextWidget.dart';
import 'package:fashion_store/feature/authentication/screens/SignUp/widget/signupFormWidget.dart';
import 'package:flutter/material.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

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
                'Create Account!',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'Sign up to get started',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(height: 30),

              SignupFormWidget(),

              SizedBox(height: 30),
              SigninTextWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
