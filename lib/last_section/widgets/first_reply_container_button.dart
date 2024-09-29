import 'package:crm_dahboard/last_section/widgets/row_dot_container.dart';
import 'package:crm_dahboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class FirstReplyContainerButton extends StatelessWidget {
  const FirstReplyContainerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Color(0xff242D4E)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'View full statements',
                  style:
                      AppStyles.styleMeduim16(context).copyWith(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const RowDotContainer()
          ],
        ),
      ),
    );
  }
}
