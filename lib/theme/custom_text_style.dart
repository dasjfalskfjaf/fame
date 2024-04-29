import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get pingFangSC {
    return copyWith(
      fontFamily: 'PingFang SC',
    );
  }

  TextStyle get iBMPlexSans {
    return copyWith(
      fontFamily: 'IBM Plex Sans',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
// Title text style
  static get titleMediumPingFangSC =>
      theme.textTheme.titleMedium!.pingFangSC.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumPingFangSC16 =>
      theme.textTheme.titleMedium!.pingFangSC.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumPingFangSCPrimaryContainer =>
      theme.textTheme.titleMedium!.pingFangSC.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
}
