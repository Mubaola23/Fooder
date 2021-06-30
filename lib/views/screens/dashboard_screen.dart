import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fooder/core/constants.dart';
import 'package:fooder/core/images.dart';
import 'package:fooder/views/screens/cart_screen.dart';
import 'package:fooder/views/widgets/app_button.dart';
import 'package:fooder/views/widgets/app_textfield.dart';
import 'package:fooder/views/widgets/categories_card.dart';
import 'package:fooder/views/widgets/grocery_deal_card.dart';
import 'package:line_icons/line_icons.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _visibleCarouselIndex = 0;

  final List<Widget> imageSliders = [
    food1,
    food2,
    food3,
  ]
      .map((item) => Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.symmetric(horizontal: 8),
            color: kWhiteColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: "10% ",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: kPrimaryColor,
                              fontSize: 22),
                          children: <TextSpan>[
                            TextSpan(
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                                text:
                                    "Discount on All Organic Fresh Vegetables."),
                          ],
                        ),
                        softWrap: true,
                      ),
                      kSmallVerticalSpacing,
                      AppButton(
                        onPressed: () {},
                        label: "CHECK NOW",
                        fontSize: 8,
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                )),
              ],
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            _header(),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    kExtraSmallVerticalSpacing,
                    _mainCategories(),
                    kMediumVerticalSpacing,
                    _categories(context),
                    kMediumVerticalSpacing,
                    _goceryDeals(),
                    kMediumVerticalSpacing,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _showDialogue() {
    return AlertDialog(
      title: Text("Search"),
      content: AppTextField(
        hintText: "eg. Grocery",
        suffixIcon: Icon(LineIcons.search),
      ),
    );
  }

  Widget _goceryDeals() {
    bool heart = false;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Grocery Deals",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        Container(
          padding: EdgeInsets.only(left: 24),
          height: MediaQuery.of(context).size.height / 2.5,
          child: GridView.count(
            crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            children: [
              GroceryDealCard(
                  image: orange,
                  title: "Fresh Orange",
                  weight: "1kg",
                  amount: 42.60),
              GroceryDealCard(
                  image: groce1,
                  title: "Broccoli Flower",
                  weight: "500 gm",
                  amount: 30.99),
              GroceryDealCard(
                  image: groce1,
                  title: "Pasta Fresh",
                  weight: "1kg",
                  amount: 42.60),
              GroceryDealCard(
                  image: groce2,
                  title: "Fresh Tommatoes",
                  weight: "1kg",
                  amount: 42.60),
              GroceryDealCard(
                  image: groce3,
                  title: "Fresh Orange",
                  weight: "1kg",
                  amount: 42.60),
              GroceryDealCard(
                  image: groce1,
                  title: "Fresh Orange",
                  weight: "1kg",
                  amount: 42.60),
              GroceryDealCard(
                  image: groce2,
                  title: "Sea Fish",
                  weight: "1kg",
                  amount: 42.60),
              GroceryDealCard(
                  image: groce3,
                  title: "Fresh Orange",
                  weight: "1kg",
                  amount: 42.60),
            ],
          ),
        ),
      ],
    );
  }

  Widget _categories(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Collection List",
                style: TextStyle(
                    fontSize: responsive18(context),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "SEE ALL",
                style: TextStyle(
                    fontSize: responsive14(context),
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
        SizedBox(height: responsive14(context)),
        SizedBox(
          height: 170,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              IconAndTitleCard(
                onPressed: () {},
                title: 'Fruits',
                subtitle: "FRESH",
                image: strawberry,
                color: Color(0xffFDD1DB),
                color1: Color(0xffE593A3),
                color2: Color(0xffC57887),
              ),
              IconAndTitleCard(
                onPressed: () {},
                title: 'Vegetables',
                subtitle: "ORGANIC",
                image: vegetable,
                color: Color(0xffF1FFA8),
                color1: Color(0xffAEC371),
                color2: Color(0xff5B862D),
              ),
              IconAndTitleCard(
                onPressed: () {},
                title: 'Diary',
                subtitle: "FRESH",
                image: diary,
                color: Color(0xffFFEBCA),
                color1: Color(0xffBFAE92),
                color2: Color(0xff7F7059),
              ),
              IconAndTitleCard(
                onPressed: () {},
                title: 'Fruits',
                subtitle: "FRESH",
                image: strawberry,
                color: Color(0xffFDD1DB),
                color1: Color(0xffE593A3),
                color2: Color(0xffC57887),
              ),
              IconAndTitleCard(
                onPressed: () {},
                title: 'Vegetables',
                subtitle: "ORGANIC",
                image: vegetable,
                color: Color(0xffF1FFA8),
                color1: Color(0xffAEC371),
                color2: Color(0xff5B862D),
              ),
              IconAndTitleCard(
                onPressed: () {},
                title: 'Diary',
                subtitle: "FRESH",
                image: diary,
                color: Color(0xffFFEBCA),
                color1: Color(0xffBFAE92),
                color2: Color(0xff7F7059),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            logo,
            width: 80.0,
          ),
          Row(
            children: [
              GestureDetector(
                  onTap: () => _showDialogue(), child: Icon(LineIcons.search)),
              GestureDetector(
                  onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CartScreen()),
                      ),
                  child: Icon(LineIcons.shopping_cart)),
            ],
          )
        ],
      ),
    );
  }

  Widget _mainCategories() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          initialPage: 1,
          autoPlay: true,
          viewportFraction: 1.0,
          onPageChanged: (index, _) {
            setState(() {
              _visibleCarouselIndex = index;
            });
          },
        ),
        items: imageSliders,
      ),
    );
  }
}
