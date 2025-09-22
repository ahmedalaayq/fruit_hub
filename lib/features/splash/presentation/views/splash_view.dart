import 'package:flutter/material.dart';
import 'package:fruit_hub/core/data_source/local_data/preference_keys.dart';
import 'package:fruit_hub/core/data_source/local_data/preference_manager.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruit_hub/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:fruit_hub/features/splash/presentation/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static const String splashView = '/splashView';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    executeNavigation();
  }

  executeNavigation() async {
    await Future.delayed(const Duration(seconds: 2));
    final isOnboardingViewSeen =
        await PreferenceManager.getData<bool>(
          key: 'isOnboardingViewSeen',
        ) ??
        false;
    final isLoginViewSeen =
        await PreferenceManager.getData<bool>(
          key: 'isLoginViewSeen',
        ) ??
        false;

    if (!mounted) return;
    if (isOnboardingViewSeen == false) {
      Navigator.pushNamedAndRemoveUntil(
        context,
        OnboardingView.onboardingView,
        (route) => false,
      );
    } else {
      Navigator.pushNamed(context, LoginView.loginView);
    }

    if (!isLoginViewSeen) {
      /// TODO: implement Home Navigation
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashViewBody());
  }
}
