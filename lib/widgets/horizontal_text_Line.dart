import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';

class HorizontalLine extends StatelessWidget {
  final String text;

  const HorizontalLine({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: ConfigConstant.margin2),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 20.0),
              child: Divider(
                color: Colors.grey.withOpacity(0.5),
                height: 36,
              ),
            ),
          ),
          Text(text),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 20.0, right: 10.0),
              child: Divider(
                color: Colors.grey.withOpacity(0.5),
                height: 36,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
