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
      sectionsSpace: 0,
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
          color: const Color(0xFF34D196),
          radius: activeIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          color: const Color(0xFFFFA15B),
          radius: activeIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          color: const Color(0xFF6665DD),
          radius: activeIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          color: const Color(0xFF166E9C),
          radius: activeIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
