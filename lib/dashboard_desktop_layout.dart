import 'package:crm_dahboard/custom_drawer/custom_drawer.dart';
import 'package:crm_dahboard/last_section/last_section.dart';
import 'package:crm_dahboard/middle_section/middle_section.dart';
import 'package:flutter/material.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121526),
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          const SizedBox(
            width: 55,
          ),
          const Expanded(
            flex: 3,
            child: CustomScrollView(slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(flex: 2, child: MiddleSection()),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(child: LastSection())
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
