import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

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
            Flexible(
              child: FittedBox(
                child: Text(
                  'DownLoad',
                  style: AppStyles.styleRegular16(context),
                ),
              ),
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
