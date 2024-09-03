import 'package:crm_dahboard/adaptive_layout.dart';
import 'package:crm_dahboard/dashboard_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AdaptiveLayout(
            mobileLayout: (context) => const Scaffold(),
            tabletLayout: (context) => const Scaffold(),
            desktopLayout: (context) => const DashboardDesktopLayout()));
  }
}
