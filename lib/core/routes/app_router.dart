import 'package:dalel/features/onboarding/presentation/onboarding_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const OnboardingView(),
  )
]);
