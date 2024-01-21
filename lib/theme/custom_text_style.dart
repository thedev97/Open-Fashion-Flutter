import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Bodoni text style
  static get bodoniModa28ptBluegray900 => TextStyle(
        color: appTheme.blueGray900.withOpacity(0.53),
        fontSize: 162.fSize,
        fontWeight: FontWeight.w800,
      ).bodoniModa28pt;
  // Body text style
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLarge18_1 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyLargeBluegray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyLargeBluegray90018 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeBluegray90018_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get bodyLargeDeeporange50 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.deepOrange50,
      );
  static get bodyLargeGray5001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray5001,
      );
  static get bodyLargeGray500118 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray5001,
        fontSize: 18.fSize,
      );
  static get bodyLargeGray5001_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray5001,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeGray700_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeOnError => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get bodyLargeOnError_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargeRed300 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red300,
        fontSize: 18.fSize,
      );
  static get bodyLargeRed300_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red300,
      );
  static get bodyLargeRed300_2 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red300,
      );
  static get bodyLarge_1 => theme.textTheme.bodyLarge!;
  static get bodyLargeff333333 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF333333),
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray40014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray40014_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400.withOpacity(0.64),
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.53),
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray90014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray90014_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray90014_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.64),
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray90014_3 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray90014_4 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumBluegray900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray5001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray5001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray500114 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray5001,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray70014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray70014_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGray90003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90003,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray90004 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90004,
        fontSize: 14.fSize,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError.withOpacity(1),
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimary14 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumPrimary14_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 14.fSize,
      );
  static get bodyMediumff333333 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF333333),
        fontSize: 14.fSize,
      );
  static get bodyMediumffdd8560 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFDD8560),
        fontSize: 14.fSize,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodySmallBluegray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallBluegray90011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray900,
        fontSize: 11.fSize,
      );
  static get bodySmallGray50 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50,
        fontSize: 10.fSize,
      );
  static get bodySmallGray5001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray5001,
      );
  static get bodySmallGray5001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray5001,
      );
  static get bodySmallGray5001_2 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray5001,
      );
  static get bodySmallGray50_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50.withOpacity(0.53),
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Display text style
  static get displayMediumBluegray900 =>
      theme.textTheme.displayMedium!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.64),
      );
  static get displayMedium_1 => theme.textTheme.displayMedium!;
  // Headline text style
  static get headlineLargeBluegray900 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.6),
      );
}

extension on TextStyle {
  TextStyle get bodoniModa28pt {
    return copyWith(
      fontFamily: 'Bodoni Moda 28pt',
    );
  }

  TextStyle get tenorSans {
    return copyWith(
      fontFamily: 'Tenor Sans',
    );
  }
}
