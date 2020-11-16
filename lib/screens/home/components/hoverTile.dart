import 'dart:async';

import 'package:flutter/material.dart';

import 'package:random_color/random_color.dart';
import 'package:web/components/widgetSize.dart';

class HoverTile extends StatefulWidget {
  final Widget child;

  HoverTile({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  _HoverTileState createState() => _HoverTileState();
}

class _HoverTileState extends State<HoverTile>
    with SingleTickerProviderStateMixin {
  Color tileColor;
  RandomColor _randomColor;
  Timer timer;
  Size size;
  bool forward;

  AnimationController _ac;
  Animation _colorTween;

  @override
  void initState() {
    forward = true;
    size = Size.zero;
    _randomColor = RandomColor();

    _ac =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));

    _colorTween = ColorTween(
            begin: _randomColor.randomColor(
                colorBrightness: ColorBrightness.light),
            end: _randomColor.randomColor(
                colorBrightness: ColorBrightness.light))
        .animate(_ac);

    timer = Timer.periodic(Duration(seconds: 10), (_) {
      fireAnimation();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        fireAnimation();
      },
      child: Container(
        child: WidgetSize(
          onChange: (size) {
            setState(() {
              this.size = size;
            });
          },
          child: MouseRegion(
            onEnter: (event) {
              fireAnimation();
            },
            child: AnimatedBuilder(
              animation: _colorTween,
              builder: (context, child) => Container(
                margin: EdgeInsets.all(4),
                color: _colorTween.value,
                child: size.longestSide > 40 ? widget.child : Container(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void fireAnimation() {
    timer.cancel();
    forward ? _ac.forward() : _ac.reverse();
    setState(() {
      this.forward = !forward;
    });
    timer = Timer.periodic(Duration(seconds: 5), (_) {
      fireAnimation();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
