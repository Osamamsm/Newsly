import 'package:injectable/injectable.dart';

@lazySingleton
abstract class OnBoardingRepo {
  bool hasSeenOnBoarding();

  Future<void> setOnBoardingAsSeen();
}
