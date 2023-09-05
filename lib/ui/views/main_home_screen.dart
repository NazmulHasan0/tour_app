import 'package:flutter/material.dart';
import 'package:tourapp/ui/views/bottomNavController/bottomNavController.dart';
import 'package:tourapp/ui/views/drawer_screen.dart';

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          BottomNavController(),
        ],
      ),
    );
  }
}
