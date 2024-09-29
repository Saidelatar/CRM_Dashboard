import 'package:crm_dahboard/last_section/widgets/first_reply_chart_container.dart';
import 'package:flutter/material.dart';

class LastSection extends StatelessWidget {
  const LastSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 60,
        ),
        FirstReplyChartContainer()
      ],
    );
  }
}
