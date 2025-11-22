import 'package:injectable/injectable.dart';
import 'package:newsly/core/preferences/user_preferences_helper.dart';
import 'package:newsly/features/settings/data/repos/settings_repo.dart';

@LazySingleton(as: SettingsRepo)
class SettingsRepoImpl implements SettingsRepo {
  final UserPreferencesHelper _preferencesHelper;

  SettingsRepoImpl(this._preferencesHelper);

  @override
  List<String> getInterests() {
    return _preferencesHelper.getInterests();
  }

  @override
  Future<void> setInterests(List<String> interests) async {
    await _preferencesHelper.setInterests(interests);
  }

  @override
  String getLocale() {
    return _preferencesHelper.getLocale();
  }

  @override
  Future<void> setLocale(String language) async {
    await _preferencesHelper.setLocale(language);
  }
}
