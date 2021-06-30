import 'package:flutter/material.dart';
import 'package:fooder/core/constants.dart';
import 'package:fooder/core/images.dart';
import 'package:fooder/views/widgets/app_button.dart';
import 'package:line_icons/line_icons.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  double amount = 300.99;
  int count = 1;
  double total;

  bool onTap;
  bool onTap1;

  Color color = Colors.grey.shade400;
  Color color1 = Colors.grey.shade400;
  @override
  Widget build(BuildContext context) {
    total = amount * count;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              _header(),
              Expanded(
                child: Container(
                  child: ListView(
                    children: [
                      Text(
                        "Broccoli Flower",
                        style: heading1(context),
                      ),
                      Text(
                        "From Farmer's Garden",
                        style: heading3(context).copyWith(color: kPrimaryColor),
                      ),
                      Image.asset(
                        groce1,
                        width: MediaQuery.of(context).size.width / 1.5,
                        height: 250,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$ $total",
                            style: heading1(context),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  onTap = true;
                                  if (onTap == false && onTap1 == true) {
                                    color = Colors.grey.shade400;
                                    color1 = kPrimaryColor;
                                  } else {
                                    color = kPrimaryColor;
                                    color1 = Colors.grey.shade400;
                                  }
                                  count--;
                                  if (count < 1) {
                                    count = 1;
                                  }

                                  total = count * amount;
                                  setState(() {
                                    count = count;
                                    onTap = onTap;
                                    color = color;
                                    color1 = color1;
                                    total.toStringAsPrecision(6);
                                    total = total;
                                  });
                                },
                                child: Icon(
                                  Icons.remove_circle_outline,
                                  size: responsive50(context),
                                  color: color,
                                ),
                              ),
                              kTinyHorizontalSpacing,
                              Text(
                                "$count kg",
                                style: heading3(context)
                                    .copyWith(fontWeight: FontWeight.w700),
                              ),
                              kTinyHorizontalSpacing,
                              GestureDetector(
                                onTap: () {
                                  onTap1 = true;
                                  if (onTap == true && onTap1 == false) {
                                    color = kPrimaryColor;
                                    color1 = Colors.grey.shade400;
                                  } else {
                                    color1 = kPrimaryColor;
                                    color = Colors.grey.shade400;
                                  }
                                  total = count * amount;
                                  count++;
                                  setState(() {
                                    count = count;
                                    onTap1 = onTap;
                                    color = color;
                                    color1 = color1;
                                    total = total;
                                  });
                                },
                                child: Icon(
                                  Icons.add_circle_outline,
                                  size: responsive50(context),
                                  color: color1,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      kMediumVerticalSpacing,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Description",
                            style: heading2(context),
                          ),
                        ],
                      ),
                      kExtraSmallVerticalSpacing,
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco  Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. ",
                        style: bodyText1(context),
                      ),
                      kMediumVerticalSpacing,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Related Products",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16.0),
                          Container(
                            margin:
                                EdgeInsets.only(bottom: responsive16(context)),
                            height: MediaQuery.of(context).size.height / 5,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              itemBuilder: (context, index) =>
                                  _relatedProduct(),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: AppButton(
                                  onPressed: () {}, label: "Add to Cart")),
                        ],
                      ),
                      kMediumVerticalSpacing,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _relatedProduct() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: responsive16(context)),
          padding: EdgeInsets.all(responsive16(context)),
          decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Image.asset(
                orange,
                width: responsive100(context),
              ),
              Text(
                "Fresh Orange",
                style: TextStyle(
                    fontSize: responsive12(context),
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(LineIcons.angle_left),
          ),
          kMediumHorizontalSpacing,
          Icon(LineIcons.shopping_cart),
        ],
      ),
    );
  }
}
