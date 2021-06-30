import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fooder/core/constants.dart';
import 'package:fooder/views/screens/product_screen.dart';
import 'package:line_icons/line_icons.dart';

class GroceryDealCard extends StatefulWidget {
  final String image;
  final String title;
  final Color color;
  final Function onPressed;
  final double amount;
  final String weight;

  const GroceryDealCard({
    Key key,
    this.onPressed,
    this.color,
    @required this.image,
    @required this.title,
    @required this.weight,
    @required this.amount,
  }) : super(key: key);

  @override
  _GroceryDealCardState createState() => _GroceryDealCardState();
}

class _GroceryDealCardState extends State<GroceryDealCard> {
  bool heart = true;

  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 20,
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.only(
        right: responsive16(context),
        bottom: responsive16(context),
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      heart = !heart;
                    });
                  },
                  child: Icon(
                    heart ? LineIcons.heart_o : LineIcons.heart,
                    color: heart ? kBlackColor : kErrorColor,
                    size: responsive24(context),
                  )),
            ],
          ),
          Image.asset(
            widget.image,
            height: MediaQuery.of(context).size.height / 9.5,
          ),
//          kExtraSmallVerticalSpacing,
//          Container(
//            padding: EdgeInsets.symmetric(
//                vertical: 4, horizontal: responsive8(context)),
//            child: Text(widget.weight,
//                style: TextStyle(
//                    color: kWhiteColor,
//                    fontSize: responsive10(context),
//                    fontWeight: FontWeight.w600)),
//            decoration: BoxDecoration(
//              color: Colors.green.shade700,
//              borderRadius: BorderRadius.circular(4),
//            ),
//          ),
//          kExtraSmallVerticalSpacing,
          Text(
            widget.title,
            style: TextStyle(
                fontSize: responsive12(context), fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          Text(
            "\$ ${widget.amount}",
            style: TextStyle(
              fontSize: responsive18(context),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
//          kExtraSmallVerticalSpacing,
          GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ProductScreen())),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  LineIcons.shopping_cart,
                  color: kPrimaryColor,
                ),
                Text(
                  "Add to Cart",
                  style: TextStyle(
                      fontSize: responsive18(context),
                      fontWeight: FontWeight.w700,
                      color: kPrimaryColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
