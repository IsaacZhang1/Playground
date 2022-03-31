import 'package:flutter/material.dart';

class HorizontalPadding extends StatelessWidget {
  final double byFactorOf;

  const HorizontalPadding({
    Key? key,
    this.byFactorOf = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: 8.0 * byFactorOf,
    );
  }
}
