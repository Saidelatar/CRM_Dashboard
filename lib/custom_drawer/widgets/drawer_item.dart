import 'package:crm_dahboard/custom_drawer/widgets/active_inactive_drawer_item.dart';
import 'package:crm_dahboard/models/items_model.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final bool isActive;
  final ItemsModel itemsModel;
  const DrawerItem(
      {super.key, this.isActive = false, required this.itemsModel});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(itemsModel: itemsModel)
        : InActiveDrawerItem(itemsModel: itemsModel);
  }
}
