import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/onboarding/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(
    BuildContext context,
  ) {
    return SmoothPageIndicator(
      controller: controller,
      count: onBoardingData.length,
      effect: ExpandingDotsEffect(
          activeDotColor: AppColors.deepBrown, dotHeight: 8, dotWidth: 10),
    );
  }
}
