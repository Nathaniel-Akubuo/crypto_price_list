import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kGreen = Color(0xff19BC9B); // primary
const kRed = Color(0xffBC193A); //complementary
const kWhite = Color(0xffFFFFFF);
const kGrey = Color(0xffF9F9FA);
const kBlack = Color(0xff000000);
const kTextColor = kBlack;

const kGreenSwatch = MaterialColor(
    0xff19BC9B,
    <int, Color>{
        50: kGreen,
        100: kGreen,
        200: kGreen,
        300: kGreen,
        400: kGreen,
        500: kGreen,
        600: kGreen,
        700: kGreen,
        800: kGreen,
        900: kGreen,
    },
);



//Text styles
TextStyle kTitleTextStyle = GoogleFonts.poppins(
    color: kTextColor, fontSize: 28, fontWeight: FontWeight.bold);
TextStyle kRegularTextStyle =
    GoogleFonts.poppins(color: kTextColor, fontSize: 14);

TextStyle kAppBarTextStyle = kRegularTextStyle.copyWith(
    fontSize: 18, fontWeight: FontWeight.w600, color: kWhite);

TextStyle kButtonTextStyle = GoogleFonts.poppins(
    color: kWhite, fontSize: 16, fontWeight: FontWeight.bold);

TextStyle kHomeTitleTextStyle = kTitleTextStyle.copyWith(fontSize: 16);

// Padding
const kMainPadding = EdgeInsets.symmetric(horizontal: 16, vertical: 8);

// Decorations
const kRoundedTopBorder = BorderRadius.vertical(top: Radius.circular(24));
const kBorderRadius = BorderRadius.all(Radius.circular(16));

// horizontal spacing
const Widget horizontalSpaceTiny = SizedBox(width: 5.0);
const Widget horizontalSpaceSmall = SizedBox(width: 10.0);
const Widget horizontalSpaceRegular = SizedBox(width: 15.0);
const Widget horizontalSpaceMedium = SizedBox(width: 25.0);
const Widget horizontalSpaceLarge = SizedBox(width: 50.0);

// vertical spacing
const Widget verticalSpaceTiny = SizedBox(height: 5.0);
const Widget verticalSpaceSmall = SizedBox(height: 10.0);
const Widget verticalSpaceRegular = SizedBox(height: 15.0);
const Widget verticalSpaceMedium = SizedBox(height: 25.0);
const Widget verticalSpaceLarge = SizedBox(height: 50.0);
