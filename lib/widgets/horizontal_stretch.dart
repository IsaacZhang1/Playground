import 'package:flutter/material.dart';

class HorizontalStretch extends StatelessWidget {
  final Widget child;

  const HorizontalStretch({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: child,
    );
  }
}
