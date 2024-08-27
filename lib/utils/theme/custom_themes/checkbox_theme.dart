import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/// Custom Class for Light & Dark Text Themes
class TCheckboxTheme {
  TCheckboxTheme._(); // To avoid creating instances

  /// Customizable Light Text Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.xs)),
    // checkColor: MaterialStateProperty.resolveWith((states) {
    checkColor: WidgetStateProperty.resolveWith((states) {
      // if (states.contains(MaterialState.selected)) {
      if (states.contains(WidgetState.selected)) {
        return TColors.white;
      } else {
        return TColors.black;
      }
    }),
    // fillColor: MaterialStateProperty.resolveWith((states) {
    fillColor: WidgetStateProperty.resolveWith((states) {
      // if (states.contains(MaterialState.selected)) {
      if (states.contains(WidgetState.selected)) {
        return TColors.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );

  /// Customizable Dark Text Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.xs)),
    // checkColor: MaterialStateProperty.resolveWith((states) {
    checkColor: WidgetStateProperty.resolveWith((states) {
      // if (states.contains(MaterialState.selected)) {
      if (states.contains(WidgetState.selected)) {
        return TColors.white;
      } else {
        return TColors.black;
      }
    }),
    // fillColor: MaterialStateProperty.resolveWith((states) {
    fillColor: WidgetStateProperty.resolveWith((states) {
      // if (states.contains(MaterialState.selected)) {
      if (states.contains(WidgetState.selected)) {
        return TColors.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
