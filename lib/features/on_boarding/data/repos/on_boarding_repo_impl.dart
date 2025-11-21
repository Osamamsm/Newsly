import 'package:injectable/injectable.dart';
import 'package:newsly/features/on_boarding/data/repos/on_boarding_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: OnBoardingRepo)
class OnBoardingRepoImpl implements OnBoardingRepo {
  static const _key = "has_seen_onboarding";
  final SharedPreferences _preferences;

  OnBoardingRepoImpl(this._preferences);

  @override
  bool hasSeenOnBoarding() {
    return _preferences.getBool(_key) ?? false;
  }

  @override
  Future<void> setOnBoardingAsSeen() async {
    await _preferences.setBool(_key, true);
  }
}
