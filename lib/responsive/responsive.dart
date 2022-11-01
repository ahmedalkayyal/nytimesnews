// import 'package:flutter/material.dart';
//
// EdgeInsetsGeometry responsivePadding(MediaQueryData mediaQuery) {
//   double deviceWidth = mediaQuery.size.width;
//   if (deviceWidth < 700) {
//     return const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0);
//   } else if (deviceWidth < 1200) {
//     return const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0);
//   } else if (deviceWidth < 1650) {
//     return const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0);
//   }
//   return const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0);
// }
//
// int responsiveNumGridTiles(MediaQueryData mediaQuery) {
//   double deviceWidth = mediaQuery.size.width;
//   if (deviceWidth < 700) {
//     return 1;
//   } else if (deviceWidth < 1200) {
//     return 2;
//   } else if (deviceWidth < 1650) {
//     return 3;
//   }
//   return 4;
// }
//
// double responsiveImageHeight(MediaQueryData mediaQuery) {
//   double deviceWidth = mediaQuery.size.width;
//   if (deviceWidth < 700) {
//     return 120.0;
//   } else if (deviceWidth < 1200) {
//     return mediaQuery.size.width * 0.25;
//   } else if (deviceWidth < 1650) {
//     return mediaQuery.size.width * 0.2;
//   }
//   return mediaQuery.size.width * 0.15;
// }
//
// double responsiveTitleHeight(MediaQueryData mediaQuery) {
//   double deviceWidth = mediaQuery.size.width;
//   if (deviceWidth < 700) {
//     return 60.0;
//   } else if (deviceWidth < 1200) {
//     return mediaQuery.size.width * 0.1;
//   } else if (deviceWidth < 1650) {
//     return mediaQuery.size.width * 0.07;
//   }
//   return mediaQuery.size.width * 0.05;
// }