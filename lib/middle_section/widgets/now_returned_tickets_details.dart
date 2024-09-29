import 'package:crm_dahboard/models/tickets_by_type_details_model.dart';
import 'package:crm_dahboard/middle_section/widgets/now_returned_tickets_items_details.dart';
import 'package:flutter/material.dart';

class NowAndReturnedTicketsDetails extends StatelessWidget {
  const NowAndReturnedTicketsDetails({super.key});

  static const items = [
    TicketsByTypeDetailsModel(
        color: Color(0xffCE06C8), title: 'Returned Tickets'),
    TicketsByTypeDetailsModel(
        color: Color(0xffB200FF), title: 'SetNew Ticketsup'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: NowAndReturnedTicketsItemsDetails(itemModel: e),
              ))
          .toList(),
    );
  }
}
