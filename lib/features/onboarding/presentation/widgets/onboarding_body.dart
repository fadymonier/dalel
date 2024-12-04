// ignore_for_file: must_be_immutable

import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/features/onboarding/data/models/onboarding_model.dart';
import 'package:dalel/features/onboarding/presentation/widgets/custom_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingWidgetBody extends StatelessWidget {
  const OnboardingWidgetBody(
      {super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 525.h,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0.r),
            child: Column(
              children: [
                Container(
                  width: 343.w,
                  height: 290.h,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(onBoardingData[index].imagePath),
                          fit: BoxFit.fill)),
                ),
                SizedBox(
                  height: 24.h,
                ),
                CustomIndicator(
                  controller: controller,
                ),
                SizedBox(
                  height: 32.h,
                ),
                Text(
                  onBoardingData[index].title,
                  style: CustomTextStyles.poppins500style24
                      .copyWith(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  onBoardingData[index].subTitle,
                  style:
                      CustomTextStyles.poppins300style16.copyWith(fontSize: 14),
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
