import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:web/components/defaultButton.dart';
import 'package:web/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: BoxDecoration(
        color: kBackgroundColor,
      ),
      child: Row(
        children: [
          NavbarButton(
            title: "pedahl",
            press: () {},
            fontSize: 48,
          ),
          Spacer(),
          NavbarButton(
            title: "music",
            press: () {},
          ),
          NavbarButton(
            title: "images",
            press: () {},
          ),
          Container(
            margin: EdgeInsets.only(
              left: 64,
            ),
            child: DefaultButton(
              title: "booking",
              press: () {},
            ),
          )
        ],
      ),
    );
  }
}

class NavbarButton extends StatelessWidget {
  final String title;
  final Function press;
  final double fontSize;
  NavbarButton({Key key, this.title, this.press, this.fontSize = 24})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            color: kWhiteColor,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
