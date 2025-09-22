import 'package:flutter/material.dart';
import 'package:fruit_hub/features/onboarding/models/onboarding_model.dart';
import 'package:fruit_hub/features/onboarding/presentation/widgets/page_view_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,

      itemCount: OnboardingModel.onboardingList.length,
      itemBuilder: (context, index) {
        final list = OnboardingModel.onboardingList;
        return PageViewItem(
          isTextButtonVisible:
              (pageController.hasClients
                  ? pageController.page == 0
                  : false),
          model: list[index],
        );
      },
    );
  }
}
