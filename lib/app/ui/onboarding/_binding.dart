import 'package:get/get.dart';

import '../ui.dart';

class OnBoardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<OnBoardingController>(OnBoardingController());
  }
}
