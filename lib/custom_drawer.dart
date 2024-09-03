import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        children: [
          Text('CRM Dashboard',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontFamily: 'Inter',
              ))
        ],
      ),
    );
  }
}
