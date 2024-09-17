import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  text,
                  style: AppStyles.styleRegular20(context),
                ),
              ),
              const Expanded(child: SizedBox()),
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
