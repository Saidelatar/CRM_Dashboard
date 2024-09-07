import 'package:crm_dahboard/drawer_listtile.dart';
import 'package:crm_dahboard/items_listview.dart';
import 'package:crm_dahboard/models/items_model.dart';
import 'package:crm_dahboard/utils/app_images.dart';
import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: const BoxDecoration(color: Color(0xff161B2E)),
      width: MediaQuery.sizeOf(context).width * 0.2,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Center(
              child: FittedBox(
                child: Text('CRM Dashboard',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontFamily: 'Inter',
                    )),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          const SliverToBoxAdapter(
            child: DrawerListtile(image: Assets.imagesGroup, text: 'Report'),
          ),
          DrawerItemsListview(
            items: const [
              ItemsModel(item: 'Graph'),
              ItemsModel(item: 'Text'),
            ],
          ),
          const SliverToBoxAdapter(
            child: Divider(
              color: Color(0xff9C5D9C),
              thickness: 0.6,
            ),
          ),
          const SliverToBoxAdapter(
            child: DrawerListtile(image: Assets.imagesMusic, text: 'Channels'),
          ),
          DrawerItemsListview(
            items: const [
              ItemsModel(item: 'Email'),
              ItemsModel(item: 'Phone Call'),
              ItemsModel(item: 'Online Chat'),
              ItemsModel(item: 'Website'),
            ],
          ),
          const SliverToBoxAdapter(
            child: Divider(
              color: Color(0xff9C5D9C),
              thickness: 0.6,
            ),
          ),
          const SliverToBoxAdapter(
            child: DrawerListtile(
                image: Assets.imagesMdiTicketOutline, text: 'Ticket Status'),
          ),
          DrawerItemsListview(
            items: const [
              ItemsModel(item: 'Created'),
              ItemsModel(item: 'Open'),
              ItemsModel(item: 'Responded'),
              ItemsModel(item: 'Other'),
              ItemsModel(item: 'Deleted'),
            ],
          ),
          const SliverToBoxAdapter(
            child: Divider(
              color: Color(0xff9C5D9C),
              thickness: 0.6,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  child: Text(
                    'Full Tickets Report',
                    style: AppStyles.styleBold24(context).copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                FittedBox(
                  child: Text(
                    'DownLoad Report',
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: const Color(0xff878787)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Expanded(child: CustomButton())
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xffD45AF1),
          Color(0xff9C77FA),
        ]),
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'DownLoad',
              style: AppStyles.styleRegular16(context),
            ),
            const Icon(
              Icons.download,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
