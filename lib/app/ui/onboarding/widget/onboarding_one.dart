import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({
    super.key,
    required this.index,
    required this.image,
    required this.text,
    required this.onTap,
  });

  final int index;
  final String image;
  final String text;
  final VoidCallback onTap;
  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isFinished ? widget.onTap : () {},
      child: Container(
        width: Get.width,
        height: Get.height,
        color: Colors.transparent,
        padding: const EdgeInsets.all(24).copyWith(top: 24 + viewPaddingTop),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Positioned.fill(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      widget.image,
                      width: Get.width * 0.8,
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    AnimatedTextKit(
                      animatedTexts: <AnimatedText>[
                        TypewriterAnimatedText(widget.text,
                            textStyle: AppTextStyles.normalBold.copyWith(fontSize: 16, color: Colors.white),
                            speed: const Duration(milliseconds: 60),
                            cursor: '',
                        ),
                      ],
                      totalRepeatCount: 1,
                      onFinished: () {
                        setState(() {
                          isFinished = true;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            if (isFinished)
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: AnimatedTextKit(
                  animatedTexts: <AnimatedText>[
                    FadeAnimatedText(
                      PRESS_CONTINUED,
                      textStyle: AppTextStyles.normalBold.copyWith(fontSize: 16, color: Colors.white),
                      duration: const Duration(milliseconds: 1500),
                    ),
                  ],
                  repeatForever: true,
                ),
              )
          ],
        ),
      ),
    );
  }
}
