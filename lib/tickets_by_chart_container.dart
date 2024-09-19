import 'package:crm_dahboard/models/tickets_by_type_details_model.dart';
import 'package:crm_dahboard/tickets_by_type_chart.dart';
import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TicketsByTypeContainer extends StatelessWidget {
  const TicketsByTypeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xff161C32),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tickets By Type',
                style: AppStyles.styleBold24(context)
                    .copyWith(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: TicketsByTypeChart()),
                  SizedBox(
                    width: 33,
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

class TicketsByTypeDetails extends StatelessWidget {
  const TicketsByTypeDetails({super.key});

  static const items = [
    TicketsByTypeDetailsModel(color: Color(0xff34D1B4), title: 'Sales'),
    TicketsByTypeDetailsModel(color: Color(0xffFF915B), title: 'Setup'),
    TicketsByTypeDetailsModel(color: Color(0xff662EEA), title: 'Bug'),
    TicketsByTypeDetailsModel(color: Color(0xff166E9C), title: 'Features'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => TicketsItemsDetails(itemModel: e)).toList(),
    );
  }
}

class TicketsItemsDetails extends StatelessWidget {
  final TicketsByTypeDetailsModel itemModel;
  const TicketsItemsDetails({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemModel.title,
        style: AppStyles.styleMeduim16(context),
      ),
    );
  }
}
