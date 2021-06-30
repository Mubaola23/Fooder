import 'package:flutter/material.dart';
import 'package:fooder/core/constants.dart';
import 'package:fooder/core/images.dart';
import 'package:fooder/views/widgets/app_button.dart';
import 'package:line_icons/line_icons.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double amount = 300.0;
  int count = 0;
  double total = 600;

  @override
  Widget build(BuildContext context) {
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
                    _cartCard(),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total: ",
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        Text("\$ $total",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: responsive16(context),
                            )),
                      ],
                    ),
                    kExtraLargeVerticalSpacing,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppButton(
                          onPressed: () {},
                          label: "Checkout",
                          color: kPrimaryColor,
                          fontSize: responsive18(context),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Row(
        children: [
          GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Icon(LineIcons.angle_left)),
          kMediumHorizontalSpacing,
          Text(
            "Cart",
            style: TextStyle(fontSize: responsive18(context)),
          )
        ],
      ),
    );
  }

  Widget _cartCard() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context, index) => Card(
        elevation: 3,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: responsive8(context),
              vertical: responsive12(context)),
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Image.asset(
                groce1,
                width: responsive100(context),
              ),
              Text.rich(
                TextSpan(
                  text: "Ofada Rice and Chicken \n",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: kPrimaryColor,
                      fontSize: responsive16(context)),
                  children: <TextSpan>[
                    TextSpan(
                        style: TextStyle(
                            fontSize: responsive18(context),
                            fontWeight: FontWeight.normal),
                        text: " $amount"),
                  ],
                ),
                softWrap: true,
              ),
            ]),
            Divider(
              color: kSecondaryColor,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        count--;
                        if (count < 0) {
                          count = 0;
                        }
                        setState(() {
                          count = count;
                        });
                      },
                      child: Icon(
                        Icons.remove_circle,
                        color: kSecondaryColor,
                      ),
                    ),
                    kTinyHorizontalSpacing,
                    Text("$count"),
                    kTinyHorizontalSpacing,
                    GestureDetector(
                      onTap: () {
                        count++;
                        setState(() {
                          count = count;
                        });
                      },
                      child: Icon(
                        Icons.add_circle,
                        color: kSecondaryColor,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.delete,
                  color: kSecondaryColor,
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
