import 'package:crm_dahboard/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff121526),
      body: Row(
        children: [
          CustomDrawer(),
        ],
      ),
    );
  }
}
