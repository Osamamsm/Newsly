abstract class SettingsRepo {
  List<String> getInterests();

  Future<void> setInterests(List<String> interests);
}
