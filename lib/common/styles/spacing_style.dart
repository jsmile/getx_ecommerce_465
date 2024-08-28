import 'package:flutter/material.dart';
import 'package:getx_ecommerce_465/utils/constants/sizes.dart';

class TSpacingStyle {
  /// - 대부분의 화면에서 반복해서 사용될 것이므로 TSpacingStyle 로 분리했음.
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
  );
}
