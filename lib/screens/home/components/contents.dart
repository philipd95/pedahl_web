import 'package:flutter/material.dart';
import 'package:web/components/widgetSize.dart';
import 'package:web/constants.dart';

class Content {
  static Widget about = Infotext(
    title: "About",
    bodytext: Constants.loremIpsum[0],
  );

  static Widget bandcamp = Infotext(
    title: "Bandcam",
    bodytext: Constants.loremIpsum[1].substring(0, 180),
  );

  static Widget soundcloud = Infotext(
    title: "Soundcloud",
    bodytext: Constants.loremIpsum[2].substring(0, 180),
  );

  static Widget spotify = Infotext(
    title: "spotify",
  );
  static Widget instagram = Infotext(
    title: "Insta",
  );
}

class Infotext extends StatefulWidget {
  final String title;
  final String bodytext;

  Infotext({
    Key key,
    this.title,
    this.bodytext = "",
  }) : super(key: key);

  @override
  _InfotextState createState() => _InfotextState();
}

class _InfotextState extends State<Infotext> {
  Size size = Size(250, 250);

  @override
  void initState() {
    size = Size.zero;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WidgetSize(
      onChange: (newSize) {
        setState(() {
          size = newSize;
        });
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 16,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.title.toUpperCase(),
                  style: size.longestSide > 200
                      ? Constants.headlineText
                      : Constants.paragraphtText,
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            size.longestSide > 100
                ? Text(
                    widget.bodytext,
                    style: size.longestSide > 250
                        ? Constants.paragraphtText
                        : Constants.paragraphtTextSmall,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
