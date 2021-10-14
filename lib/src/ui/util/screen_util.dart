import 'dart:core';

import 'package:flutter/widgets.dart';

const double kMobileSmallWidthBreakPoint = 320;
const double kMobileMediumWidthBreakPoint = 375;
const double kMobileLargeWidthBreakPoint = 425;
const double kTabletWidthBreakPoint = 768;
const double kDesktopWidthBreakPoint = 1024;

double getScreenHeight(BuildContext context) =>
    MediaQuery.of(context).size.height;

double getScreenWidth(BuildContext context) =>
    MediaQuery.of(context).size.width;

bool isDesktop(BuildContext context) =>
    getScreenWidth(context) >= kDesktopWidthBreakPoint;

bool isMobile(BuildContext context) =>
    getScreenWidth(context) < kDesktopWidthBreakPoint;

bool isMobileSmall(BuildContext context) =>
    getScreenWidth(context) <= kMobileSmallWidthBreakPoint;

bool isMobileMedium(BuildContext context) =>
    getScreenWidth(context) <= kMobileMediumWidthBreakPoint;

bool isMobileLarge(BuildContext context) =>
    getScreenWidth(context) <= kMobileLargeWidthBreakPoint;

bool isTablet(BuildContext context) =>
    getScreenWidth(context) <= kTabletWidthBreakPoint;