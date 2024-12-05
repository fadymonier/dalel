import 'package:dalel/features/auth/presentation/views/sign_in.dart';
import 'package:dalel/features/auth/presentation/views/sign_up.dart';
import 'package:dalel/features/onboarding/presentation/onboarding_view.dart';
import 'package:dalel/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: "/onBoarding",
    builder: (context, state) => const OnboardingView(),
  ),
  GoRoute(
    path: "/signUp",
    builder: (context, state) => const SignUpView(),
  ),
  GoRoute(
    path: "/signIn",
    builder: (context, state) => const SignInView(),
  ),
]);
