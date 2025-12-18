


import 'package:sizer/sizer.dart';

extension BaseSizeExtension on num {
  /// text size
  double get ts => (this * 1.0).sp;

  /// adapt size：adapt width、height、padding
  double get as => (this * 1.0).dp;
}