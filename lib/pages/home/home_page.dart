import 'package:flutter/material.dart';
import 'package:quick_read/navigation/bottom_navbar.dart';

class HomePage extends StatelessWidget {
  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        backgroundColor: Colors.blue.shade50,
        onItemTap: (int tappedIndex) {
          print('Tapped index: $tappedIndex');
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}