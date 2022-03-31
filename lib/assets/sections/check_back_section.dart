import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freshcut_app/widgets/vertical_padding.dart';

class CheckBackSection extends StatelessWidget {
  const CheckBackSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Check back soon for new clips and creator content.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        VerticalPadding(),
        Text(
          'In the meantime join our discord.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 13.0,
            color: Color.fromRGBO(161, 157, 170, 1),
            fontWeight: FontWeight.w400,
          ),
        ),
        VerticalPadding(byFactorOf: 5),
      ],
    );
  }
}
