import 'package:fashion_store/feature/authentication/screens/Login/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninTextWidget extends StatelessWidget {
  const SigninTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an account?'),
        TextButton(
          // style: TextButton.styleFrom(
          //   foregroundColor: Colors.redAccent,
          // ),
          onPressed: () {
            Get.to(LoginScreen());
          },
          child: Text(
            'Sign in',
            style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.6,
            ),
          ),
        ),
      ],
    );
  }
}
