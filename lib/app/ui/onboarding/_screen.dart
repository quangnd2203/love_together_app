// ignore_for_file: use_key_in_widget_constructors, flutter_style_todos
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../routes/app_pages.dart';
import '../ui.dart';
import 'widget/onboarding_one.dart';

class OnBoardingScreen extends BaseScreen<OnBoardingController> {
  @override
  Widget? builder() {
    // TODO: implement builder
    return Scaffold(
      backgroundColor: AppColors.pink,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return FadeStack(
      index: controller.index.value,
      children: <Widget>[
        Onboarding(
          index: 0,
          key: const ValueKey<int>(0),
          image: AppImages.onboardingOne.value,
          text: ONBOARDING_TEXT_ONE,
          onTap: () => controller.changePage(1),
        ),
        Onboarding(
          index: 1,
          key: const ValueKey<int>(1),
          image: AppImages.onboardingTwo.value,
          text: ONBOARDING_TEXT_TWO,
          onTap: () => controller.changePage(2),
        ),
        Onboarding(
          index: 2,
          key: const ValueKey<int>(2),
          image: AppImages.onboardingThree.value,
          text: ONBOARDING_TEXT_THREE,
          onTap: () => controller.toNavigationPage(),
        ),
      ],
    );
  }
}
