import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooder/core/constants.dart';

class IconAndTitleCard extends StatelessWidget {
//  final double width;
//  final double height;
  final String image;
  final String title;
  final Color color;
  final Color color1;
  final Color color2;
  final Function onPressed;
  final String subtitle;

  const IconAndTitleCard({
    Key key,
//    this.width = 130.0,
//    this.height = 200.0,
    this.onPressed,
    @required this.image,
    @required this.title,
    @required this.color,
    @required this.color1,
    @required this.color2,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: responsive16(context)),
//
//      width: width,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            image,
            fit: BoxFit.fill,
            height: responsive100(context),
          ),
          kSmallVerticalSpacing,
          Text(
            subtitle,
            style: TextStyle(fontSize: responsive16(context), color: color1),
            textAlign: TextAlign.center,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: responsive22(context),
                fontWeight: FontWeight.bold,
                color: color2),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
