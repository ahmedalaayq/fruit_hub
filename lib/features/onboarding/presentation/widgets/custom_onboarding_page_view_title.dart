import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class CustomOnboardingPageViewTitle extends StatelessWidget {
  const CustomOnboardingPageViewTitle({
    super.key,
    required this.title,
    required this.index,
    this.textSpan1,
    this.textSpan2,
  });

  final String title;
  final int index;
  final String? textSpan1;

  final String? textSpan2;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: AppTextStyles.heading5Bold(
              color: AppColors.grayscale950,
            ),
          ),
          TextSpan(
            text: textSpan1 ?? title,
            style: AppTextStyles.heading5Bold(
              color: AppColors.primaryColor,
            ),
          ),
          TextSpan(
            text: textSpan2 ?? title,
            style: AppTextStyles.heading5Bold(
              color: AppColors.secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
