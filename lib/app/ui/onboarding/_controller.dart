import 'dart:developer';

import 'package:get/get.dart';

import '../../routes/app_pages.dart';
import '../../utils/utils.dart';
import '../ui.dart';

class OnBoardingController extends BaseController {

  RxInt index = 0.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  void changePage(int page){
    index.value = page;
  }

  void toNavigationPage(){
    AppPrefs.isOnboarding = true;
    Get.offAllNamed(Routes.NAVIGATION);
  }
}
