import 'package:crm_dahboard/custom_drawer/widgets/custom_button.dart';
import 'package:crm_dahboard/custom_drawer/widgets/drawer_listtile.dart';
import 'package:crm_dahboard/custom_drawer/widgets/items_listview.dart';
import 'package:crm_dahboard/models/items_model.dart';
import 'package:crm_dahboard/models/value_notifier.dart';
import 'package:crm_dahboard/utils/app_images.dart';
import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final ActiveIndexController controller = ActiveIndexController();
  CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: const BoxDecoration(color: Color(0xff161B2E)),
        width: MediaQuery.sizeOf(context).width * 0.2,
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
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
              listIndex: 0,
              controller: controller,
            ),
            const SliverToBoxAdapter(
              child: Divider(
                color: Color(0xff9C5D9C),
                thickness: 0.6,
              ),
            ),
            const SliverToBoxAdapter(
              child:
                  DrawerListtile(image: Assets.imagesMusic, text: 'Channels'),
            ),
            DrawerItemsListview(
              items: const [
                ItemsModel(item: 'Email'),
                ItemsModel(item: 'Phone Call'),
                ItemsModel(item: 'Online Chat'),
                ItemsModel(item: 'Website'),
              ],
              listIndex: 1,
              controller: controller,
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
              listIndex: 2,
              controller: controller,
            ),
            const SliverToBoxAdapter(
              child: Divider(
                color: Color(0xff9C5D9C),
                thickness: 0.6,
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Full Tickets Report',
                          style: AppStyles.styleBold24(context).copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          'DownLoad Report',
                          style: AppStyles.styleRegular16(context)
                              .copyWith(color: const Color(0xff878787)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomButton()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
