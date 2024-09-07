import 'package:crm_dahboard/models/items_model.dart';
import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final ItemsModel itemsModel;
  const DrawerItem({super.key, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return Text(
      itemsModel.item,
      style: AppStyles.styleRegular20(context),
    );
  }
}
