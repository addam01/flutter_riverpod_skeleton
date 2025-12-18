


import 'package:flutter/widgets.dart';
import 'package:riverpod_skeleton/core/utils/base_config.dart';
import 'package:riverpod_skeleton/generated/l10n.dart';
import 'package:riverpod_skeleton/resources/app_color.dart';
import 'package:riverpod_skeleton/resources/app_dimens.dart';
import 'package:riverpod_skeleton/resources/app_images.dart';
import 'package:riverpod_skeleton/resources/app_style.dart';
import 'package:riverpod_skeleton/resources/app_theme.dart';

class R {
  static AppLocalizationDelegate get delegate => S.delegate;

  static S get string => S.current;

  static AppStyles get style => AppStyles.instance;

  static AppColors get color => AppColors.instance;

  static AppImages get image => AppImages.current;

  static AppDimens get dimen => AppDimens.instance;

  static AppTheme get theme => AppTheme.instance;

  static String get fontRobot => "Robot";
}

class ModuleImage extends Image {
  // ignore: use_super_parameters
  ModuleImage.asset(
    super.name, {
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) : super.asset(
    key: key,
    package: BaseResourceConfig.Package_Module,
    bundle: bundle,
    frameBuilder: frameBuilder,
    errorBuilder: errorBuilder,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
    scale: scale,
    width: width,
    height: height,
    color: color,
    opacity: opacity,
    colorBlendMode: colorBlendMode,
    fit: fit ?? BoxFit.contain,
    alignment: alignment,
    repeat: repeat,
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    isAntiAlias: isAntiAlias,
    filterQuality: filterQuality,
    cacheWidth: cacheWidth,
    cacheHeight: cacheHeight);

  // ignore: use_super_parameters
  ModuleImage.assetNormal(
    super.name, {
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) : super.asset(
    key: key,
    package: BaseResourceConfig.Package_Module,
    bundle: bundle,
    frameBuilder: frameBuilder,
    errorBuilder: errorBuilder,
    semanticLabel: semanticLabel,
    excludeFromSemantics: excludeFromSemantics,
    scale: scale,
    width: width,
    height: height,
    color: color ?? R.color.icon_normal,
    opacity: opacity,
    colorBlendMode: colorBlendMode,
    fit: fit ?? BoxFit.contain,
    alignment: alignment,
    repeat: repeat,
    centerSlice: centerSlice,
    matchTextDirection: matchTextDirection,
    gaplessPlayback: gaplessPlayback,
    isAntiAlias: isAntiAlias,
    filterQuality: filterQuality,
    cacheWidth: cacheWidth,
    cacheHeight: cacheHeight);
}