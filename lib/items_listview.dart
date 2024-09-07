import 'package:crm_dahboard/drawer_item.dart';
import 'package:crm_dahboard/models/items_model.dart';
import 'package:flutter/material.dart';

class DrawerItemsListview extends StatelessWidget {
  List<ItemsModel> items = [const ItemsModel(item: '')];
  DrawerItemsListview({super.key, required this.items});

  /*List<ItemsModel> items = [
    const ItemsModel(item: 'Email'),
    const ItemsModel(item: 'Phone Call'),
    const ItemsModel(item: 'Online Chat'),
    const ItemsModel(item: 'Website'),
  ];*/

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return DrawerItem(itemsModel: items[index]);
        });
  }
}
