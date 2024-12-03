// ignore_for_file: must_be_immutable

import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_assets.dart';

class OnboardingWidgetBody extends StatelessWidget {
  OnboardingWidgetBody({super.key});

  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.r),
            child: Column(
              children: [
                Image.asset(Assets.imagesOnboarding1),
                SizedBox(
                  height: 24.h,
                ),
                CustomIndicator(
                  controller: _controller,
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  "Explore The history with \n Dalel in a smart way",
                  style: CustomTextStyles.poppins500style24
                      .copyWith(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 16.h,
                ),
                const Text(
                  "Using our app’s history libraries \n you can find many historical periods",
                  style: CustomTextStyles.poppins300style16,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
