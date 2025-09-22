import 'package:flutter/material.dart';
import 'package:fruit_hub/core/data_source/local_data/preference_keys.dart';
import 'package:fruit_hub/core/data_source/local_data/preference_manager.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruit_hub/features/onboarding/models/onboarding_model.dart';
import 'package:fruit_hub/features/onboarding/presentation/widgets/onboarding_page_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'custom_button.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() =>
      _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController _pageController;
  var _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnboardingPageView(pageController: _pageController),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 29.0),
          child: SmoothPageIndicator(
            controller: _pageController,
            onDotClicked: (int index) {
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            effect: WormEffect(
              radius: 11,
              dotWidth: 9,
              dotHeight: 9,
              dotColor:
                  (_currentPage == 1
                      ? AppColors.primaryColor
                      : const Color(0xFF5DB957)),
              activeDotColor: AppColors.primaryColor,
            ),
            // controller: pageController,
            count: OnboardingModel.onboardingList.length,
          ),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 600),
          transitionBuilder: (child, animation) {
            final curved = CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            );
            return FadeTransition(
              opacity: curved,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                ).animate(curved),
                child: child,
              ),
            );
          },
          child:
              _currentPage == 1
                  ? CustomButton(
                    onPressed: () {
                      PreferenceManager.setData<bool>(
                        key: PreferenceKeys.onboarding,
                        value: true,
                      );
                      Navigator.pushReplacementNamed(
                        context,
                        LoginView.loginView,
                      );
                    },
                    key: const ValueKey('startButton'),
                    text: 'ابدأ الآن',
                  )
                  : const SizedBox(height: 54),
        ),

        const SizedBox(height: 24),
      ],
    );
  }
}
