// ignore_for_file: always_specify_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_images.dart';
import '../../routes/app_pages.dart';
import '../ui.dart';

class SplashController extends BaseController {
  @override
  Future<void> onInit() async {
    super.onInit();
    await getConfig();
    await getProfile();
  }

  Future<void> getConfig() async {}

  Future<void> getProfile() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAllNamed(Routes.NAVIGATION);
  }

}
