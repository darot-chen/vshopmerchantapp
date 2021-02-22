import 'package:flutter/material.dart';

class ProductImageNotFound extends StatelessWidget {
  const ProductImageNotFound({
    Key key,
    this.height = 100,
    this.iconSize = 24,
  }) : super(key: key);

  final double height, iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: height,
      height: height,
      color: Theme.of(context).primaryColor,
      child: Icon(
        Icons.shopping_cart,
        size: iconSize,
      ),
    );
  }
}
