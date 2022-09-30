// ignore_for_file: use_key_in_widget_constructors, flutter_style_todos

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../resources/model/test_model.dart';
import '../ui.dart';
import 'widget/navigation_sub_icons.dart';

class NavigationScreen extends BaseScreen<NavigationController> {
  @override
  Widget? builder() {
    // TODO: implement builder
    return Scaffold(
      body: _buildBody(),
      floatingActionButton: buildNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildBody() {
    return Stack(
      children: <Widget>[
        FadeIndexedStack(
          index: controller.index.value,
          children: <Widget>[
            HomeScreen(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
            const SizedBox(),
          ],
        ),
        const Positioned(
          right: 20,
          bottom: 120,
          child: NavigationSubIcons(),
        ),
      ],
    );
  }

  Widget buildNavigationBar() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 27),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white.withOpacity(0.25),
              border: Border.all(width: 4, color: AppColors.pink),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                buildNavigationIcon(
                  AppImages.navigationHome.value,
                  isSelected: controller.index.value == 0,
                  onTap: () => controller.changePage(0),
                ),
                const SizedBox(
                  width: 11,
                ),
                buildNavigationIcon(
                  AppImages.navigationMessage.value,
                  isSelected: controller.index.value == 1,
                  onTap: () => controller.changePage(1),
                ),
                const SizedBox(
                  width: 20,
                ),
                buildNavigationIcon(AppImages.navigationMessage.value, opacity: 0),
                const SizedBox(
                  width: 20,
                ),
                buildNavigationIcon(
                  AppImages.navigationNotification.value,
                  isSelected: controller.index.value == 2,
                  onTap: () => controller.changePage(2),
                ),
                const SizedBox(
                  width: 11,
                ),
                buildNavigationIcon(
                  AppImages.navigationMenu.value,
                  isSelected: controller.index.value == 3,
                  onTap: () => controller.changePage(3),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () => controller.changePage(4),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.pink,
              child: CircleAvatar(
                radius: 26,
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  AppImages.navigationHeart.value,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildNavigationIcon(String image, {double opacity = 1, bool isSelected = false, VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap ?? () {},
      child: Opacity(
        opacity: opacity,
        child: SvgPicture.asset(
          image,
          color: isSelected ? AppColors.red : Colors.white,
        ),
      ),
    );
  }
}
