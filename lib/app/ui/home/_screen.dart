// ignore_for_file: use_key_in_widget_constructors, flutter_style_todos
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_images.dart';
import '../../constants/app_text_styles.dart';
import '../../constants/app_values.dart';
import '../ui.dart';

class HomeScreen extends BaseScreen<HomeController> {
  @override
  Widget? builder() {
    // TODO: implement builder
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.only(top: viewPaddingTop + 70, right: 16, left: 16),
      height: Get.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppImages.homeBackground.value,
            ),
            fit: BoxFit.fill),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                buildAvatar(AppImages.homeAvatarMale.value, 'BungBuCuaiem'),
                Image.asset(AppImages.homeHeart.value, width: 70, height: 70,),
                buildAvatar(AppImages.homeAvatarFemale.value, 'CaheoCuaanh'),
              ],
            ),
            const SizedBox(height: 35,),
            buildNumberOfDate(),
            const SizedBox(height: 45,),
            Text(APP_POEM, style: AppTextStyles.normalBold.copyWith(fontSize: 16, color: Colors.white),),
          ],
        ),
      ),
    );
  }

  Widget buildNumberOfDate(){
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Text(
              '${controller.numberOfDate}\nDays',
              textAlign: TextAlign.center,
              style: AppTextStyles.joseFinBold.copyWith(
                fontSize: 48,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 3.82
                  ..color = Colors.white,
              ),
            ),
            Text(
              '${controller.numberOfDate}\nDays',
              textAlign: TextAlign.center,
              style: AppTextStyles.joseFinBold.copyWith(
                color: AppColors.red,
                fontSize: 48,
              ),
            ),
          ],
        ),
        const SizedBox(height: 32,),
        Stack(
          children: <Widget>[
            Text(
              '${loveBeginDate.day}/${loveBeginDate.month}/${loveBeginDate.year}',
              textAlign: TextAlign.center,
              style: AppTextStyles.joseFinBold.copyWith(
                fontSize: 24,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 5
                  ..color = Colors.white,
              ),
            ),
            Text(
              '${loveBeginDate.day}/${loveBeginDate.month}/${loveBeginDate.year}',
              textAlign: TextAlign.center,
              style: AppTextStyles.joseFinBold.copyWith(
                color: AppColors.red,
                fontSize: 24,
              ),
            ),
          ],
        ),

      ],
    );
  }

  Widget buildAvatar(String avatar, String name) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: AppColors.pink,
          radius: 40,
          child: CircleAvatar(
            radius: 36,
            child: Image.asset(avatar),
          ),
        ),
        const SizedBox(height: 14,),
        Stack(
          children: <Widget>[
            Text(
              name,
              textAlign: TextAlign.center,
              style: AppTextStyles.joseFinBold.copyWith(
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 4
                  ..color = Colors.white,
              ),
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: AppTextStyles.joseFinBold.copyWith(
                color: AppColors.red,
              ),
            ),
          ],
        )
      ],
    );
  }
}
