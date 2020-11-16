import 'package:flutter/material.dart';

class GoldenRatioContainer extends StatelessWidget {
  final Widget primaryChild;
  final Widget secondaryChild;

  const GoldenRatioContainer({
    Key key,
    this.primaryChild,
    this.secondaryChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return constraints.maxWidth > constraints.maxHeight
          ? AspectRatio(
              aspectRatio: 1.618,
              child: Row(
                children: <Widget>[
                  Flexible(flex: 1618, child: primaryChild),
                  Flexible(flex: 1000, child: secondaryChild),
                ],
              ),
            )
          : AspectRatio(
              aspectRatio: 1 / 1.618,
              child: Column(
                children: <Widget>[
                  Flexible(flex: 1618, child: primaryChild),
                  Flexible(flex: 1000, child: secondaryChild),
                ],
              ),
            );
    });
  }
}
