import 'package:crm_dahboard/models/tickets_by_type_details_model.dart';
import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class NowAndReturnedTicketsItemsDetails extends StatelessWidget {
  final TicketsByTypeDetailsModel itemModel;
  const NowAndReturnedTicketsItemsDetails({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(
            color: itemModel.color,
            shape: const OvalBorder(),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: FittedBox(
            child: Text(
              itemModel.title,
              style: AppStyles.styleMeduim16(context),
              softWrap: true,
            ),
          ),
        ),
      ],
    );
  }
}
