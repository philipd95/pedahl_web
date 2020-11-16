import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final Function press;
  const DefaultButton({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      color: kWhiteColor,
      onPressed: press,
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }
}
