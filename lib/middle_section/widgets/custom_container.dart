import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color color1, color2;
  final String text1, text2;
  const CustomContainer(
      {super.key,
      required this.color1,
      required this.color2,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(colors: [color1, color2])),
      child: Padding(
        padding: const EdgeInsets.only(
            top: 18, bottom: 29.74, right: 44.45, left: 44.45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                text1,
                style: AppStyles.styleMeduim13(context),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FittedBox(
              child: Text(
                text2,
                style: AppStyles.styleBold24(context)
                    .copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
