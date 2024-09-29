import 'package:crm_dahboard/last_section/widgets/custom_dot_container.dart';
import 'package:flutter/material.dart';

class RowDotContainer extends StatelessWidget {
  const RowDotContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomDotContainer(),
        SizedBox(
          width: 3,
        ),
        CustomDotContainer(),
        SizedBox(
          width: 3,
        ),
        CustomDotContainer()
      ],
    );
  }
}
