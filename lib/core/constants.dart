import 'package:flutter/material.dart';

/// App Colors
const kPrimaryColor = Color(0xFF5C7953);

const kSecondaryColor = Color(0xFFFF9D2E);

const kBlackColor = Color(0xFF343434);

const kWhiteColor = Colors.white;
const bgColor = Color(0xFFF1F1F1);
const kErrorColor = Colors.red;

const kHintColor = Color(0xFF6F6565);

const kTextFieldFillColor = Color(0x80E5E5E5);

double responsive4(BuildContext context) =>
    MediaQuery.of(context).size.width / 38;

double responsive6(BuildContext context) =>
    MediaQuery.of(context).size.width / 36;

double responsive8(BuildContext context) =>
    MediaQuery.of(context).size.width / 34;

double responsive10(BuildContext context) =>
    MediaQuery.of(context).size.width / 32;

double responsive12(BuildContext context) =>
    MediaQuery.of(context).size.width / 30;

double responsive14(BuildContext context) =>
    MediaQuery.of(context).size.width / 28;

double responsive16(BuildContext context) =>
    MediaQuery.of(context).size.width / 26;

double responsive18(BuildContext context) =>
    MediaQuery.of(context).size.width / 24;

double responsive20(BuildContext context) =>
    MediaQuery.of(context).size.width / 22;

double responsive22(BuildContext context) =>
    MediaQuery.of(context).size.width / 20;

double responsive24(BuildContext context) =>
    MediaQuery.of(context).size.width / 18;

double responsive26(BuildContext context) =>
    MediaQuery.of(context).size.width / 16;

double responsive28(BuildContext context) =>
    MediaQuery.of(context).size.width / 14;

double responsive30(BuildContext context) =>
    MediaQuery.of(context).size.width / 12;

double responsive32(BuildContext context) =>
    MediaQuery.of(context).size.width / 10;

double responsive36(BuildContext context) =>
    MediaQuery.of(context).size.width / 6;

double responsive38(BuildContext context) =>
    MediaQuery.of(context).size.width / 4;

double responsive50(BuildContext context) =>
    MediaQuery.of(context).size.width / 10;

double responsive100(BuildContext context) =>
    MediaQuery.of(context).size.width / 5;

TextStyle heading1(BuildContext context) => TextStyle(
      color: kBlackColor,
      fontSize: responsive28(context),
      fontWeight: FontWeight.w600,
    );

TextStyle heading2(BuildContext context) => TextStyle(
      color: kBlackColor,
      fontSize: responsive20(context),
      fontWeight: FontWeight.w600,
    );

TextStyle heading3(BuildContext context) => TextStyle(
      color: kBlackColor,
      fontSize: responsive16(context),
      fontWeight: FontWeight.w400,
    );

TextStyle heading(BuildContext context) => TextStyle(
      fontSize: responsive20(context),
      fontWeight: FontWeight.w700,
    );

TextStyle bodyText1(BuildContext context) => TextStyle(
      color: kBlackColor,
      fontSize: responsive16(context),
      fontWeight: FontWeight.w400,
    );

TextStyle bodyText2(BuildContext context) => TextStyle(
      color: kBlackColor,
      fontSize: responsive14(context),
      fontWeight: FontWeight.w500,
    );

TextStyle subtitle1(BuildContext context) => TextStyle(
      color: kBlackColor,
      fontSize: responsive18(context),
      fontWeight: FontWeight.w400,
    );

TextStyle subtitle2(BuildContext context) => TextStyle(
      color: kBlackColor,
      fontSize: responsive12(context),
    );

TextStyle labelText(BuildContext context) => TextStyle(
      color: kBlackColor,
      fontSize: responsive16(context),
      fontWeight: FontWeight.w400,
    );

/// Vertical Spacings
const kTinyVerticalSpacing = SizedBox(height: 4.0);

const kExtraSmallVerticalSpacing = SizedBox(height: 8);

const kSmallVerticalSpacing = SizedBox(height: 16);

const kMediumVerticalSpacing = SizedBox(height: 24);

const kLargeVerticalSpacing = SizedBox(height: 32);

const kExtraLargeVerticalSpacing = SizedBox(height: 64);

/// Horizontal Spacings
const kTinyHorizontalSpacing = SizedBox(width: 4.0);

const kExtraSmallHorizontalSpacing = SizedBox(width: 8);

const kSmallHorizontalSpacing = SizedBox(width: 16);

const kMediumHorizontalSpacing = SizedBox(width: 24);

const kLargeHorizontalSpacing = SizedBox(width: 32);
