import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/core/constants/app_text_styles.dart';
import 'package:newsly/core/constants/constants.dart';
import 'package:newsly/features/settings/presentation/view_model/settings_cubit/settings_cubit.dart';
import 'package:newsly/features/settings/presentation/view_model/settings_cubit/settings_state.dart';

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    var items = Constants.locales;
    return SizedBox(
      width: 75,
      height: 40,
      child: BlocBuilder<SettingsCubit, SettingsState>(
        buildWhen: (previous, current) => current.locale != previous.locale,
        builder: (context, state) {
          String selectedLocale = context.read<SettingsCubit>().getLocale();
          return DropdownButtonHideUnderline(
            child: DropdownButton2<String>(
              isExpanded: true,
              items: items
                  .map(
                    (item) => DropdownMenuItem(
                      value: item,
                      child: Text(item, style: AppTextStyles.bodyBoldPrimary16),
                    ),
                  )
                  .toList(),
              value: selectedLocale,
              onChanged: (value) {
                context.read<SettingsCubit>().setLocale(value!);
              },
              buttonStyleData: ButtonStyleData(
                height: 40,
                width: 40,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.grey.shade300),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(height: 40),
            ),
          );
        },
      ),
    );
  }
}
