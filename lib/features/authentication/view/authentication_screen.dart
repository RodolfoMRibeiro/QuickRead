import 'package:flutter/material.dart';
import 'package:quick_read/features/authentication/view/widgets/welcome_page.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomePage(),
    );
  }
}
