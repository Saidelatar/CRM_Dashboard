import 'package:crm_dahboard/middle_section/widgets/tickets_items_details.dart';
import 'package:crm_dahboard/models/tickets_by_type_details_model.dart';
import 'package:flutter/material.dart';

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
      children: items
          .map((e) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TicketsItemsDetails(itemModel: e),
              ))
          .toList(),
    );
  }
}
