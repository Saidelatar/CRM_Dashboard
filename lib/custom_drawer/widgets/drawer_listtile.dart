import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerListtile extends StatelessWidget {
  final String image, text;
  const DrawerListtile({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(image),
        const SizedBox(
          width: 8,
        ),
        Flexible(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: AppStyles.styleBold24(context),
            ),
          ),
        ),
      ],
    );

    ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: SvgPicture.asset(image),
      trailing: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          text,
          style: AppStyles.styleBold24(context),
        ),
      ),
    );
  }
}
