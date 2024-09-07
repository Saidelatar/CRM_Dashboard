import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerListtile extends StatelessWidget {
  final String image, text;
  const DrawerListtile({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: SvgPicture.asset(image),
      title: FittedBox(
        child: Text(
          text,
          style: AppStyles.styleBold24(context),
        ),
      ),
    );
  }
}
