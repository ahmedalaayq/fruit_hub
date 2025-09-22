import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruit_hub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruit_hub/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.splashView:
      return MaterialPageRoute(
        builder: (context) => const SplashView(),
      );
    case OnboardingView.onboardingView:
      return MaterialPageRoute(
        builder: (context) => const OnboardingView(),
      );
    case LoginView.loginView:
      return MaterialPageRoute(builder: (context)=> const LoginView());
  }
  return MaterialPageRoute(builder: (context) => const SplashView());
}
