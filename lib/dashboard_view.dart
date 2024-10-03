import 'package:crm_dahboard/adaptive_layout.dart';
import 'package:crm_dahboard/custom_drawer/custom_drawer.dart';
import 'package:crm_dahboard/dashboard_desktop_layout.dart';
import 'package:crm_dahboard/dashboard_mobile_layout.dart';
import 'package:crm_dahboard/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff121526),
        key: scaffoldKey,
        appBar: MediaQuery.sizeOf(context).width < 600
            ? AppBar(
                elevation: 0,
                backgroundColor: const Color(0xff121526),
                leading: IconButton(
                    onPressed: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu_sharp,
                      color: Colors.white,
                    )),
              )
            : null,
        drawer: MediaQuery.sizeOf(context).width < 600
            ? Drawer(
                child: CustomDrawer(),
              )
            : null,
        body: AdaptiveLayout(
            mobileLayout: (context) => const DashboardMobileLayout(),
            tabletLayout: (context) => const DashboardTabletLayout(),
            desktopLayout: (context) => const DashboardDesktopLayout()));
  }
}
