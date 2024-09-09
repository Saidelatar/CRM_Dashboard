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
        children: [
          const Icon(Icons.shape_line),
          Text(
            itemsModel.item,
            style: AppStyles.styleRegular20(context),
          ),
        ],
      ),
    );
  }
}
