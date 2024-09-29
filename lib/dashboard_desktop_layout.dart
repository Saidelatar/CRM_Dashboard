import 'package:crm_dahboard/custom_drawer/custom_drawer.dart';
import 'package:crm_dahboard/last_section/widgets/first_reply_line_chart.dart';
import 'package:crm_dahboard/last_section/last_section.dart';
import 'package:crm_dahboard/middle_section/middle_section.dart';
import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121526),
      body: Row(
        children: [
          CustomDrawer(),
          const SizedBox(
            width: 55,
          ),
          const Expanded(
            flex: 3,
            child: MiddleSection(),
          ),
          const SizedBox(
            width: 20,
          ),
          const Expanded(child: LastSection())
        ],
      ),
    );
  }
}
