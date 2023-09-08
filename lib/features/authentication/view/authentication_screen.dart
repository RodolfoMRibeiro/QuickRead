import 'package:flutter/material.dart';
import 'package:iread/features/authentication/view/widgets/welcome_page.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomePage(),
    );
  }
}
