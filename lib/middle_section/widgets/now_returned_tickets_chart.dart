import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class NowAndReturnedTicketsChart extends StatefulWidget {
  const NowAndReturnedTicketsChart({super.key});

  @override
  State<NowAndReturnedTicketsChart> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NowAndReturnedTicketsChart> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      startDegreeOffset: 90,
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
          showTitle: true,
          gradient: const LinearGradient(colors: [
            Color(0xFFFC00EE),
            Color(0xFFFC00EE),
            Color(0xFFFC00EE),
          ]),
          borderSide: const BorderSide(
            style: BorderStyle.solid,
            color: Color(0xFFFC00EE),
          ),
          radius: activeIndex == 0 ? 60 : 30,
        ),
        PieChartSectionData(
          gradient: const LinearGradient(colors: [
            Color(0xFFB200FF),
            Color(0xFFB200FF),
            Color(0xFFB200FF),
          ]),
          showTitle: false,
          color: const Color(0xFFB200FF),
          radius: activeIndex == 1 ? 60 : 15,
        ),
      ],
    );
  }
}
