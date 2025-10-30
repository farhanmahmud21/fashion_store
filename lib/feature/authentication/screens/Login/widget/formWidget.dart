import 'package:fashion_store/common/widget/textFeild/formText.dart';
import 'package:fashion_store/feature/authentication/screens/ForgotPass/forgot.dart';
import 'package:fashion_store/feature/shop/home/home.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class formWidget extends StatelessWidget {
  const formWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        formText(hint: 'Email', prefix: Icons.email_outlined),
        SizedBox(height: 20),
        formText(
          hint: 'Password',
          prefix: Icons.lock_outlined,
          suffix: Icons.visibility,
        ),
        Align(
          alignment: AlignmentGeometry.centerRight,
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.deepOrangeAccent,
            ),
            onPressed: () {
              Get.to(ForgotScreen());
            },
            child: Text('Forgot Password?'),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              foregroundColor: Colors.white,
              backgroundColor: Colors.deepOrangeAccent,
            ),

            onPressed: () {
              Get.to(HomeScreen());
            },
            child: Text('Sign In'),
          ),
        ),
      ],
    );
  }
}
