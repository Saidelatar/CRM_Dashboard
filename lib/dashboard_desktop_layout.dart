import 'package:crm_dahboard/custom_container.dart';
import 'package:crm_dahboard/custom_drawer.dart';
import 'package:crm_dahboard/utils/app_images.dart';
import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121526),
      body: Row(
        children: [
          CustomDrawer(),
          const SizedBox(
            width: 55,
          ),
          Expanded(child: const MiddleSection())
        ],
      ),
    );
  }
}

class MiddleSection extends StatelessWidget {
  const MiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 55,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomContainer(
                color1: Color(0xffD172F2),
                color2: Color(0xff683F8D),
                text1: 'Avg First Reply Time',
                text2: '30 h  15 min'),
            SizedBox(
              width: 15,
            ),
            CustomContainer(
                color1: Color(0xff25E2E4),
                color2: Color(0xff1D5B78),
                text1: 'Avg Full Resolve  Time',
                text2: '22 h  40 min'),
            SizedBox(
              width: 34,
            ),
            Column(
              children: [
                SmallContainer(
                  image: Assets.imagesIcOutlineMessage,
                  text: 'Message',
                  text1: '20%',
                  color: Color(0xff58384F),
                ),
                SizedBox(
                  height: 8,
                ),
                SmallContainer(
                  image: Assets.imagesEmailcircle,
                  text: 'Emailss',
                  text1: '22%',
                  color: Color(0xff105864),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

class SmallContainer extends StatelessWidget {
  final String image, text, text1;
  final Color color;
  const SmallContainer(
      {super.key,
      required this.image,
      required this.text,
      required this.text1,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff161C32),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(2),
                decoration: const ShapeDecoration(
                  shape: OvalBorder(),
                  gradient: LinearGradient(
                      colors: [Color(0xffF97EB3), Color(0xff5B75D9)]),
                ),
                child: SvgPicture.asset(
                  image,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                text,
                style: AppStyles.styleRegular20(context),
              ),
              const SizedBox(
                width: 70,
              ),
              CircleAvatar(
                backgroundColor: color,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    text1,
                    style: AppStyles.styleRegular16(context),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
