import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_images.dart';

class NavigationSubIcons extends StatefulWidget {
  const NavigationSubIcons({super.key});

  @override
  State<NavigationSubIcons> createState() => _NavigationSubIconsState();
}

class _NavigationSubIconsState extends State<NavigationSubIcons> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Container(
        width: 50,
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(0.25),
          border: Border.all(width: 4, color: AppColors.pink),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            AnimatedCrossFade(
              firstChild: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 4,),
                  buildIcons(AppImages.navigationAlert.value),
                  const SizedBox(height: 10,),
                  buildIcons(AppImages.navigationCalendar.value),
                  const SizedBox(height: 10,),
                  buildIcons(AppImages.navigationMap.value),
                ],
              ),
              secondChild: const SizedBox(width: 50,),
              crossFadeState: isOpened ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(milliseconds: isOpened ? 450 : 300),
            ),
            AnimatedScale(
              scale: isOpened ? 1 : -1,
              duration: Duration(milliseconds: isOpened ? 450 : 300),
              child: buildIcons(AppImages.navigationArrow.value, onTap: () {
                setState(() {
                  isOpened = !isOpened;
                });
              }),
            )
          ],
        ),
      ),
    );
  }

  Widget buildIcons(String image, {VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap ?? () {},
      child: SvgPicture.asset(
        image,
        fit: BoxFit.fill,
      ),
    );
  }
}
