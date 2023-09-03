import 'package:flutter/material.dart';
import 'package:quick_read/pages/home/home_page.dart';

class QuickReadApp extends StatelessWidget {
  const QuickReadApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}