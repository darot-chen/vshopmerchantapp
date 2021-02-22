import 'package:flutter/material.dart';

class FadeOpacity extends StatelessWidget {
  const FadeOpacity({
    Key key,
    @required this.opacity,
    @required this.child,
  }) : super(key: key);

  final double opacity;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 400),
      opacity: opacity,
      child: child,
    );
  }
}
