import 'package:crm_dahboard/models/items_model.dart';
import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class InActiveDrawerItem extends StatelessWidget {
  final ItemsModel itemsModel;
  const InActiveDrawerItem({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Text(
      itemsModel.item,
      style: AppStyles.styleRegular20(context),
      overflow: TextOverflow.ellipsis,
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  final ItemsModel itemsModel;
  const ActiveDrawerItem({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff423064),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform.rotate(
              angle: 1.57,
              child: const Icon(
                Icons.eject,
                color: Color(0xffC25DEB),
                size: 40,
              )),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              itemsModel.item,
              style: AppStyles.styleRegular20(context),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
