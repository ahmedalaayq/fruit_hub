import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/data_source/local_data/preference_keys.dart';
import 'package:fruit_hub/core/data_source/local_data/preference_manager.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruit_hub/features/onboarding/models/onboarding_model.dart';
import 'package:fruit_hub/features/onboarding/presentation/widgets/custom_onboarding_page_view_title.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.model,
    required this.isTextButtonVisible,
  });

  final OnboardingModel model;
  final bool isTextButtonVisible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.52,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  fit: BoxFit.fill,
                  model.bgImage,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(model.image),
              ),

              Visibility(
                visible: isTextButtonVisible,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: AppColors.grayscale400,
                  ),
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
                  child: const Text(
                    'تخط',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 48),
        CustomOnboardingPageViewTitle(
          title: model.title,
          index: 0,
          textSpan1: model.textSpan1,
          textSpan2: model.textSpan2,
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37.0),
          child: SizedBox(
            width: 301,
            height: 66,
            child: Text(
              model.subTitle,
              textAlign: TextAlign.center,
              style: AppTextStyles.bodySmallBold(
                color: AppColors.grayscale500,
              ),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
