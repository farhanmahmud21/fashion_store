import 'package:flutter/material.dart';

class signupWidget extends StatelessWidget {
  const signupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don\'t have an account?'),
        TextButton(
          // style: TextButton.styleFrom(
          //   foregroundColor: Colors.redAccent,
          // ),
          onPressed: () {},
          child: Text(
            'Sign Up',
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
