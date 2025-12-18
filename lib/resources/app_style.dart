import 'package:flutter/material.dart';
import 'package:riverpod_skeleton/resources/resource_helper.dart';

class AppStyles {
  AppStyles._(); // Private constructor to prevent instantiation
  static final AppStyles _instance = AppStyles._();
  static AppStyles get instance => _instance;

  BoxShadow shadow(bool upShadow) {
    return BoxShadow(
        color: R.color.line_shadow,
        offset: Offset(0, upShadow ? -1 : 1)
    );
  }

  TextStyle title(bool white) {
    return TextStyle(
        color: white
            ? R.color.text_title_white
            : R.color.text_title_black,
        fontWeight: FontWeight.bold,
        fontSize: R.dimen.text_size_title
    );
  }

  TextStyle subTitle({Color? color}) {
    return TextStyle(
        color: color ?? R.color.app_main,
        fontWeight: FontWeight.bold,
        fontSize: R.dimen.text_size_subtitle
    );
  }

  TextStyle dialogTitle() {
    return TextStyle(
        color: R.color.text_title_black,
        fontWeight: FontWeight.bold,
        fontSize: R.dimen.text_size_big
    );
  }

  TextStyle labelKey() {
    return TextStyle(
      fontSize: R.dimen.text_size_smaller,
      color: R.color.text_label_key
    );
  }

  TextStyle labelHint() {
    return TextStyle(
      fontSize: R.dimen.text_size_normal,
      color: R.color.text_label_hint
    );
  }

  TextStyle labelWarn({ Color? normal}) {
    return TextStyle(
      fontSize: R.dimen.text_size_smallest,
      color: normal ?? R.color.text_label_warn
    );
  }

  TextStyle inputContent() {
    return TextStyle(
      fontSize: R.dimen.text_size_normal,
      color: R.color.text_content_input
    );
  }

  TextStyle moneyInput() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: R.dimen.text_size_normal,
      color: R.color.text_content_deeper
    );
  }

  TextStyle pageTitle() {
    return TextStyle(
      fontSize: R.dimen.text_size_biger,
      color: R.color.text_title_black
    );
  }

  TextStyle mnemonic(Color color) {
    return TextStyle(
        fontSize: R.dimen.text_size_small,
        color: color
    );
  }

  TextStyle loading() {
    return TextStyle(
      fontSize: R.dimen.text_size_normal,
      color: R.color.white_normal
    );
  }

  TextStyle labelItem({Color? color, double? fontSize}) {
    return TextStyle(
      fontSize: fontSize ?? R.dimen.text_size_normal,
      color: color ?? R.color.text_content
    );
  }

  TextStyle labelSubName() {
    return TextStyle(
      fontSize: R.dimen.text_size_smallest,
      color: R.color.text_label_disable
    );
  }

  TextStyle boxItemLabel() {
    return TextStyle(
      fontSize: R.dimen.text_size_smaller,
      color: R.color.text_label_key
    );
  }

  TextStyle boxItemContent() {
    return TextStyle(
      fontSize: R.dimen.text_size_small,
      color: R.color.text_content_deep
    );
  }

  TextStyle dialogLabel() {
    return TextStyle(
      fontSize: R.dimen.text_size_smaller,
      color: R.color.text_content_dialog
    );
  }

  TextStyle walletItem({
    bool isBold = true, bool disable = false
  }) {
    return TextStyle(
      fontSize: R.dimen.text_size_normal,
      fontWeight: isBold ? FontWeight.bold : null,
      color: disable ? R.color.white_normal : R.color.text_label_disable,
    );
  }

  TextStyle emptyStyle() {
    return TextStyle(
        fontSize: R.dimen.text_size_small,
        color: R.color.text_content_light
    );
  }

  TextStyle tabLabel(bool isSelect) {
    return TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: R.dimen.text_size_small,
        color: isSelect
            ? R.color.text_content_deeper
            : R.color.text_content_light
    );
  }

  TextStyle swapBoxLabel() {
    return TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: R.dimen.text_size_small,
        color: R.color.text_content_deeper
    );
  }

  TextStyle labelLighter() {
    return TextStyle(
        fontSize: R.dimen.text_size_smallest,
        color: R.color.text_content_lighter
    );
  }

  // 公共按钮
  TextStyle buttonMain(bool enable, {double? fontSize}) {
    return TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: fontSize ?? R.dimen.text_size_normal,
        color: R.color.btn_text_normal.withOpacity(enable ? 1 : 0.3)
    );
  }

  // 边框按钮
  TextStyle buttonBorder(Color? textColor, [bool bold = false, bool enable = true]) {
    return TextStyle(
        fontWeight: bold ? FontWeight.w500 : FontWeight.normal,
        fontSize: R.dimen.text_size_normal,
        color: textColor ?? R.color.btn_text_border.withOpacity(enable ? 1 : 0.3)
    );
  }

  // 文本按钮
  TextStyle buttonText({Color? textColor, bool warn = false}) {
    return TextStyle(
        fontWeight: FontWeight.normal,
        fontSize: R.dimen.text_size_normal,
        color: textColor
            ?? (!warn
                ? R.color.btn_text_text
                : R.color.text_label_warn
            )
    );
  }
  // 错误警告
  TextStyle textWarn({ Color? normal}) {
    return TextStyle(
        fontSize: R.dimen.text_size_smallest,
        color: normal ?? R.color.text_label_warn
    );
  }

  // 输入框提示
  TextStyle inputHint() {
    return TextStyle(
        fontSize: R.dimen.text_size_small,
        color: R.color.text_content_hint,
        fontWeight: FontWeight.normal
    );
  }
  // 条目内容
  TextStyle labelItemLayout({
    Color? color,
    FontWeight? fontWeight,
    double? height,
    double? fontSize,
  }) {
    return TextStyle(
        fontSize: fontSize ?? R.dimen.text_size_small,
        color: color ?? R.color.text_content_deep,
        fontWeight: fontWeight,
        height: height
    );
  }

  // 空试图
  TextStyle emptyLayout() {
    return TextStyle(
        fontSize: R.dimen.text_size_smaller,
        color: R.color.text_content_lighter
    );
  }

  // 页面条目标签
  TextStyle pageItemLabel() {
    return TextStyle(
        fontSize: R.dimen.text_size_normal,
        color: R.color.text_title_black
    );
  }

}