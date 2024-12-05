import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/widgets/get_buttons.dart';
import 'package:dalel/features/splash/presentation/view/functions/onboarding_fn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/custom_navbar.dart';
import 'widgets/onboarding_body.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.r),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SizedBox(
                height: 30.h,
              ),
              CustomNavBar(
                onTap: () {
                  onBoardingVisited();
                  customNavigate(context, "/SignUp");
                },
              ),
              OnboardingWidgetBody(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() {});
                  currentIndex = index;
                },
              ),
              SizedBox(
                height: 88.h,
              ),
              GetButtons(currentIndex: currentIndex, controller: _controller),
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
