import 'package:flutter/material.dart';
import 'package:infodroppers_s_application1/core/utils/size_utils.dart';
import 'package:infodroppers_s_application1/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Alata text style
  static get alataPrimary => TextStyle(
        color: theme.colorScheme.primary,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).alata;
  // Body text style
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumBalooChettan => theme.textTheme.bodyMedium!.balooChettan;
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter.copyWith(
        fontSize: 13.fSize,
      );
  // Headline text style
  static get headlineSmallInter =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLarge13 => theme.textTheme.labelLarge!.copyWith(
        fontSize: 13.fSize,
      );
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 13.fSize,
      );
  static get labelLargeLightgreenA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lightGreenA700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargeff000000 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF000000),
      );
  static get labelLargeffc8c3c3 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFFC8C3C3),
        fontSize: 13.fSize,
      );
  static get labelSmallBluegray100 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.blueGray100,
      );
  static get labelSmallff000000 => theme.textTheme.labelSmall!.copyWith(
        color: Color(0XFF000000),
      );
  static get labelSmallffd9d9d9 => theme.textTheme.labelSmall!.copyWith(
        color: Color(0XFFD9D9D9),
      );
  // Title text style
  static get titleMediumGray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.53),
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.53),
      );
}

extension on TextStyle {
  TextStyle get alata {
    return copyWith(
      fontFamily: 'Alata',
    );
  }

  TextStyle get balooChettan {
    return copyWith(
      fontFamily: 'Baloo Chettan',
    );
  }

  TextStyle get aBeeZee {
    return copyWith(
      fontFamily: 'ABeeZee',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
