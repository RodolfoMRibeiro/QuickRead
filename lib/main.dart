import 'package:flutter/material.dart';
import 'package:quick_read/features/authentication/view/authentication_screen.dart';

void main() {
  runApp(const IReadApp());
}

class IReadApp extends StatelessWidget {
  const IReadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AuthenticationScreen(),
    );
  }
}
