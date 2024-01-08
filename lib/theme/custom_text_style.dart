import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyLargeBluegray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodyLargeRaleway => theme.textTheme.bodyLarge!.raleway.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallBluegray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray700,
      );
  static get bodySmallBluegray700Regular => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallRegular => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineSmallBlack => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get headlineSmallBluegray700 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w900,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Overpass text style
  static get overpassBlack90019 => TextStyle(
        color: appTheme.black90019.withOpacity(0.4),
        fontSize: 100.fSize,
        fontWeight: FontWeight.w400,
      ).overpass;
  static get overpassWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 100.fSize,
        fontWeight: FontWeight.w400,
      ).overpass;
  // Title text style
  static get titleMediumBluegray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray700,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
      );
}

extension on TextStyle {
  TextStyle get raleway {
    return copyWith(
      fontFamily: 'Raleway',
    );
  }

  TextStyle get overpass {
    return copyWith(
      fontFamily: 'Overpass',
    );
  }
}
