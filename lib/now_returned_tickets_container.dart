import 'package:crm_dahboard/now_returned_tickets_details.dart';
import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'now_returned_tickets_chart.dart';

class NowAndReturnedTicketsContainer extends StatelessWidget {
  const NowAndReturnedTicketsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xff161C32),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'New Tickets vs Returned Tickets',
                style: AppStyles.styleBold24(context)
                    .copyWith(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(child: NowAndReturnedTicketsChart()),
                  SizedBox(
                    width: 33,
                  ),
                  Expanded(child: NowAndReturnedTicketsDetails()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
