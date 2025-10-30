import 'package:fashion_store/common/widget/textFeild/formText.dart';

import 'package:flutter/material.dart';

class SignupFormWidget extends StatelessWidget {
  const SignupFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        formText(hint: 'Full Name', prefix: Icons.person_2_outlined),
        SizedBox(height: 20),
        formText(hint: 'Email', prefix: Icons.email_outlined),
        SizedBox(height: 20),
        formText(
          hint: 'Password',
          prefix: Icons.lock_outlined,
          suffix: Icons.visibility,
        ),
        SizedBox(height: 20),
        formText(
          hint: 'Confirm Password',
          prefix: Icons.lock_outlined,
          suffix: Icons.visibility,
        ),
        SizedBox(height: 20),

        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              // foregroundColor: Colors.white,
              backgroundColor: Colors.deepOrangeAccent,
            ),

            onPressed: () {},
            child: Text(
              'Sign Up',
              style: Theme.of(
                context,
              ).textTheme.bodyLarge!.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
