import 'package:get/get.dart';

double get viewPaddingTop => Get.mediaQuery.viewPadding.top;

const String APP_NAME = 'Love Together';

/// FLAVOR = dev => development
/// FLAVOR = prod => product
const String FLAVOR = String.fromEnvironment('FLAVOR');
