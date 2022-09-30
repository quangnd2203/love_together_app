import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_images.dart';
import '../../routes/app_pages.dart';
import '../ui.dart';

class SplashController extends BaseController {
  @override
  Future<void> onInit() async {
    setLoading(true);
    super.onInit();
    await preloadAssets();
    await getConfig();
    await getProfile();
    setLoading(false);
  }

  Future<void> getConfig() async {}

  Future<void> getProfile() async {
    Get.offAllNamed(Routes.NAVIGATION);
  }

  Future<void> preloadAssets() async {
    for(final AppImages image in AppImages.values){
      await precacheImage(AssetImage(image.value), Get.context!);
    }
  }
}
