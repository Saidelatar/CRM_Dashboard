import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TicketsByTypeChart extends StatefulWidget {
  const TicketsByTypeChart({super.key});

  @override
  State<TicketsByTypeChart> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TicketsByTypeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 2,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
          setState(() {
            activeIndex =
                pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 40,
          color: const Color(0xFF34D196),
          radius: activeIndex == 0 ? 35 : 25,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 40,
          color: const Color(0xFFFFA15B),
          radius: activeIndex == 1 ? 35 : 25,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 70,
          color: const Color(0xFF6665DD),
          radius: activeIndex == 2 ? 35 : 25,
        ),
        PieChartSectionData(
          value: 20,
          showTitle: false,
          color: const Color(0xFF166E9C),
          radius: activeIndex == 3 ? 35 : 25,
        ),
      ],
    );
  }
}
