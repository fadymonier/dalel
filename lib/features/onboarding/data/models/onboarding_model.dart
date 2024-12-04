import 'package:dalel/core/utils/app_assets.dart';

class OnboardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnboardingModel(
      {required this.imagePath, required this.title, required this.subTitle});
}

List<OnboardingModel> onBoardingData = [
  OnboardingModel(
      imagePath: Assets.imagesOnboarding1,
      title: "Explore The history with\nDalel in a smart way",
      subTitle:
          "Using our app’s history libraries\nyou can find many historical periods"),
  OnboardingModel(
      imagePath: Assets.imagesOnboarding2,
      title: "From every place\non earth",
      subTitle: "A big variety of ancient places\nfrom all over the world"),
  OnboardingModel(
      imagePath: Assets.imagesOnboarding3,
      title: "Using modern AI technology\nfor better user experience",
      subTitle:
          "AI provide recommendations and helps\nyou to continue the search journey"),
];
