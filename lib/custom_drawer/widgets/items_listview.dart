import 'package:crm_dahboard/custom_drawer/widgets/drawer_item.dart';
import 'package:crm_dahboard/models/items_model.dart';
import 'package:crm_dahboard/models/value_notifier.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerItemsListview extends StatefulWidget {
  List<ItemsModel> items = [const ItemsModel(item: '')];
  final int listIndex;
  final ActiveIndexController controller;
  DrawerItemsListview(
      {super.key,
      required this.items,
      required this.listIndex,
      required this.controller});

  @override
  State<DrawerItemsListview> createState() => _DrawerItemsListviewState();
}

class _DrawerItemsListviewState extends State<DrawerItemsListview> {
  int activeindex = -1;

  @override
  void initState() {
    // Listen for changes in the active list or active item
    widget.controller.activeListIndex.addListener(() {
      if (widget.controller.activeListIndex.value != widget.listIndex) {
        setState(() {
          activeindex =
              -1; // Reset activeindex when this is not the active list
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                if (activeindex != index) {
                  setState(() {
                    activeindex = index;
                    widget.controller.activeListIndex.value =
                        widget.listIndex; // Update active list index
                    widget.controller.activeItemIndex.value = index;
                  });
                }
              },
              child: DrawerItem(
                  isActive: activeindex == index,
                  itemsModel: widget.items[index]));
        });
  }
}
