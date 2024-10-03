import 'package:crm_dahboard/last_section/widgets/bar_chart_container.dart';
import 'package:crm_dahboard/last_section/widgets/first_reply_chart_container.dart';
import 'package:flutter/material.dart';

class LastSection extends StatelessWidget {
  const LastSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          FirstReplyChartContainer(),
          SizedBox(
            height: 18,
          ),
          Expanded(child: BarChartContainer()),
          SizedBox(
            height: 32,
          )
        ],
      ),
    );
  }
}
