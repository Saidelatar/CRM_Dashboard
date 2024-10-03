import 'package:crm_dahboard/middle_section/widgets/tickets_by_type_details.dart';
import 'package:crm_dahboard/middle_section/widgets/tickets_by_type_chart.dart';
import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TicketsByTypeContainer extends StatelessWidget {
  const TicketsByTypeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xff161C32),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                child: Text(
                  'Tickets By Type',
                  style: AppStyles.styleBold24(context)
                      .copyWith(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: TicketsByTypeChart()),
                  Expanded(
                    child: SizedBox(),
                  ),
                  Expanded(child: TicketsByTypeDetails()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
