import 'package:crm_dahboard/middle_section/widgets/custom_container.dart';
import 'package:crm_dahboard/middle_section/widgets/line_chart_container.dart';
import 'package:crm_dahboard/middle_section/widgets/now_returned_tickets_container.dart';
import 'package:crm_dahboard/middle_section/widgets/small_container.dart';
import 'package:crm_dahboard/middle_section/widgets/tickets_by_chart_container.dart';
import 'package:crm_dahboard/utils/app_images.dart';
import 'package:flutter/material.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 55,
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: CustomContainer(
                  color1: Color(0xffD172F2),
                  color2: Color(0xff683F8D),
                  text1: 'Avg First Reply Time',
                  text2: '30 h  15 min',
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: CustomContainer(
                  color1: Color(0xff25E2E4),
                  color2: Color(0xff1D5B78),
                  text1: 'Avg Full Resolve  Time',
                  text2: '22 h  40 min',
                ),
              ),
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
                      height: 20,
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
        ),
        SliverToBoxAdapter(
          child: Flexible(
            child: SizedBox(
              height: 31,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Flexible(child: LineChartContainer()),
        ),
        SliverToBoxAdapter(
          child: Flexible(
            child: SizedBox(
              height: 14,
            ),
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Expanded(
            child: Row(
              children: [
                Expanded(child: TicketsByTypeContainer()),
                SizedBox(
                  width: 30,
                ),
                Expanded(child: NowAndReturnedTicketsContainer()),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 32,
        )),
      ],
    );
  }
}
