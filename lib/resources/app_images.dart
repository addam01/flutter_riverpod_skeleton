
import 'package:riverpod_skeleton/core/utils/base_config.dart';

class AppImages {
  static const String imagePath = BaseResourceConfig.Path;

  AppImages._(); // Private constructor to prevent instantiation
  static final AppImages _instance = AppImages._();
  static AppImages get current => _instance;




  String flutterBanner = '${imagePath}flutter_horizontal.svg';
}