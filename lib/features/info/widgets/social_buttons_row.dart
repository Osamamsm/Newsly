import 'package:flutter/material.dart';
import 'package:newsly/core/constants/constants.dart';
import 'package:newsly/core/helpers/functions.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/features/info/widgets/social_button.dart';

class SocialButtonsRow extends StatelessWidget {
  const SocialButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < Constants.socialButtons.length; i++) ...[
          SocialButton(
            icon: Constants.socialButtons[i]['icon'] as IconData,
            color: Constants.socialButtons[i]['color'] as Color,
            onTap: () {
              final url = Constants.socialButtons[i]['url'] as String;
              Functions.launch(url);
            },
          ),
          if (i < Constants.socialButtons.length - 1) hGap(12),
        ],
      ],
    );
  }
}
