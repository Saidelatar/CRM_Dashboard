import 'package:crm_dahboard/last_section/widgets/bar_chart.dart';
import 'package:flutter/material.dart';

class BarChartContainer extends StatelessWidget {
  const BarChartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xff161C32),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: BarChartSample2(),
    );
  }
}
