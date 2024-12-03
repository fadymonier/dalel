import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_styles.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/custom_navbar.dart';
import 'widgets/onboarding_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.r),
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              const CustomNavBar(),
              OnboardingWidgetBody(),
              CustomBtn(
                onPressed: () {},
                color: AppColors.primaryColor,
                text: AppStrings.next,
              ),
              SizedBox(
                height: 17.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
