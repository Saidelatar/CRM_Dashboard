import 'package:crm_dahboard/custom_container.dart';
import 'package:crm_dahboard/line_chart_container.dart';
import 'package:crm_dahboard/models/tickets_by_type_details_model.dart';
import 'package:crm_dahboard/now_returned_tickets_container.dart';
import 'package:crm_dahboard/now_returned_tickets_items_details.dart';
import 'package:crm_dahboard/small_container.dart';
import 'package:crm_dahboard/tickets_by_chart_container.dart';
import 'package:crm_dahboard/utils/app_images.dart';
import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';

import 'package:flutter/material.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 55,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomContainer(
                color1: Color(0xffD172F2),
                color2: Color(0xff683F8D),
                text1: 'Avg First Reply Time',
                text2: '30 h  15 min'),
            SizedBox(
              width: 15,
            ),
            CustomContainer(
                color1: Color(0xff25E2E4),
                color2: Color(0xff1D5B78),
                text1: 'Avg Full Resolve  Time',
                text2: '22 h  40 min'),
            SizedBox(
              width: 34,
            ),
            Expanded(
              child: Column(
                children: [
                  SmallContainer(
                    image: Assets.imagesIcOutlineMessage,
                    text: 'Message',
                    text1: '20%',
                    color: Color(0xff58384F),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SmallContainer(
                    image: Assets.imagesEmailcircle,
                    text: 'Emails',
                    text1: '22%',
                    color: Color(0xff105864),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 31,
        ),
        Expanded(child: LineChartContainer()),
        SizedBox(
          height: 14,
        ),
        Row(
          children: [
            Expanded(child: TicketsByTypeContainer()),
            SizedBox(
              width: 30,
            ),
            Expanded(child: NowAndReturnedTicketsContainer())
          ],
        ),
      ],
    );
  }
}
