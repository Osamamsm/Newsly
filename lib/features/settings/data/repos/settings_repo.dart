abstract class SettingsRepo {
  List<String> getInterests();

  Future<void> setInterests(List<String> interests);

  Future<void> setLocale(String language);

  String getLocale();
}
