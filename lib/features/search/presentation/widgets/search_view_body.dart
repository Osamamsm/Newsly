import 'package:flutter/material.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/helpers/spacing.dart';
import 'package:newsly/features/search/presentation/widgets/search_results_widget.dart';
import 'package:newsly/generated/l10n.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).search_results,
            style: AppTextStyles.titleBoldPrimary18,
          ),
          vGap(15),
          SearchResultsWidget(),
        ],
      ),
    );
  }
}
