import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class UserPreferencesHelper {
  final SharedPreferences _preferences;

  UserPreferencesHelper(this._preferences);

  Future<void> setInterests(List<String> interests) async {
    await _preferences.setStringList('Interests', interests);
  }

  List<String> getInterests() {
    return _preferences.getStringList('Interests') ?? [];
  }

  Future<void> setLocale(String language) async {
    await _preferences.setString('locale', language);
  }

  String getLocale() {
    return _preferences.getString('locale') ?? "en";
  }
}
