import 'package:flutter/material.dart';
import 'package:web/screens/home/components/contents.dart';
import 'goldenRatioContainer.dart';
import 'hoverTile.dart';

class GoldenRatioBody extends StatelessWidget {
  const GoldenRatioBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.82,
      width: size.width,
      child: Center(
        child: GoldenRatioContainer(
          primaryChild: HoverTile(
            child: Content.about,
          ),
          secondaryChild: GoldenRatioContainer(
            primaryChild: HoverTile(
              child: Content.bandcamp,
            ),
            secondaryChild: GoldenRatioContainer(
              primaryChild: HoverTile(
                child: Content.soundcloud,
              ),
              secondaryChild: GoldenRatioContainer(
                primaryChild: HoverTile(
                  child: Content.spotify,
                ),
                secondaryChild: GoldenRatioContainer(
                  primaryChild: HoverTile(
                    child: Content.instagram,
                  ),
                  secondaryChild: GoldenRatioContainer(
                    primaryChild: HoverTile(),
                    secondaryChild: GoldenRatioContainer(
                      primaryChild: HoverTile(),
                      secondaryChild: GoldenRatioContainer(
                        primaryChild: HoverTile(),
                        secondaryChild: HoverTile(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
