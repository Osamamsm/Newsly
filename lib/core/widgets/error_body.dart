import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:newsly/core/constants/app_colors.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/core/widgets/custom_button.dart';
import 'package:newsly/features/home/presentation/views/home_view.dart';
import 'package:newsly/generated/l10n.dart';

class ErrorBody extends StatelessWidget {
  const ErrorBody({
    super.key,
    required this.onRetry,
    required this.errMessage,
    required this.goHomeEnabled,
  });

  final VoidCallback onRetry;
  final bool goHomeEnabled;
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.kPrimaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.error_outline,
              color: AppColors.kPrimaryLightColor,
              size: 120,
            ),
          ),
          vGap(20),

          Text(
            errMessage,
            style: AppTextStyles.titleBoldPrimary20,
            textAlign: TextAlign.center,
          ),

          vGap(10),

          Text(
            S.of(context).error_body_subtitle,
            style: AppTextStyles.bodyMediumDarkGrey18,
            textAlign: TextAlign.center,
          ),
          vGap(20),

          CustomButton(
            onTap: onRetry,
            width: double.infinity,
            text: S.of(context).try_again,
          ),
          vGap(20),
          goHomeEnabled
              ? GestureDetector(
                  onTap: () {
                    context.replace(HomeView.routeName);
                  },
                  child: Text(
                    S.of(context).go_to_home,
                    style: AppTextStyles.bodyBoldPrimary16,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
