import 'package:flutter/material.dart';

class VerticalPadding extends StatelessWidget {
  final double byFactorOf;

  const VerticalPadding({
    Key? key,
    this.byFactorOf = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 8.0 * byFactorOf,
    );
  }
}
