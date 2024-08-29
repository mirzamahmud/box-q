import 'package:flutter/material.dart';

class ConfirmPasswordScreen extends StatelessWidget {
  const ConfirmPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      top: false,
      child: Scaffold(
        body: Center(
          child: Text("Confirm Password Screen"),
        ),
      ),
    );
  }
}
