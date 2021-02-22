import 'package:flutter/material.dart';

class AuthAppBarWithTexts extends StatelessWidget {
  const AuthAppBarWithTexts({
    Key key,
    this.children,
    this.title,
    this.subtitle,
    this.gradient,
    this.currentIndex = 0,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final int currentIndex;
  final List<Widget> children;
  final Gradient gradient;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 36),
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
        Text(
          subtitle,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle1,
        ),
      ],
    );
  }
}
