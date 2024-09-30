import 'package:crm_dahboard/last_section/widgets/first_reply_line_chart.dart';
import 'package:crm_dahboard/last_section/widgets/first_reply_container_button.dart';
import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class FirstReplyChartContainer extends StatelessWidget {
  const FirstReplyChartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff161C32),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: Expanded(
              child: Text(
                'First Reply and Full Resolve Time',
                style: AppStyles.styleMeduim16(context),
              ),
            ),
          ),
          const FirstReplyLineChart(),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.all(6.0),
            child: FirstReplyContainerButton(),
          ),
        ],
      ),
    );
  }
}
