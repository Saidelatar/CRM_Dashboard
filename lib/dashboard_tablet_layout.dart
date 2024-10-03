import 'package:crm_dahboard/dashboard_mobile_layout.dart';
import 'package:flutter/material.dart';

import 'custom_drawer/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(
          width: 10,
        ),
        const Expanded(child: const DashboardMobileLayout()),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
