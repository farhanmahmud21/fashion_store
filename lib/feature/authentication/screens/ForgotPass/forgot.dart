import 'package:fashion_store/common/widget/textFeild/formText.dart';

import 'package:flutter/material.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Reset Password',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              'Enter your email to reset your password',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(height: 30),
            formText(hint: 'Email', prefix: Icons.email_outlined),
            SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),

                  backgroundColor: Colors.deepOrangeAccent,
                ),

                onPressed: () {},
                child: Text(
                  'Sent Reset Link',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge!.copyWith(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
