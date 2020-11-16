import 'package:flutter/material.dart';
import 'package:web/constants.dart';
import 'package:web/screens/home/components/appBar.dart';
import 'components/goldenRatioBody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: kBackgroundColor,
        child: Center(
            child: Column(
          children: [
            CustomAppbar(),
            Spacer(),
            GoldenRatioBody(),
            Spacer(),
          ],
        )),
      ),
    );
  }
}
