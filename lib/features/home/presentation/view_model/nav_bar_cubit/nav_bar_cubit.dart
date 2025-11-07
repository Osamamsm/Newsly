import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class NavBarCubit extends Cubit<int> {
  NavBarCubit() : super(0);

  NotchBottomBarController notchBottomBarController =
      NotchBottomBarController(index: 0);

  void updateIndex(int index) {
    notchBottomBarController.jumpTo(index);
    emit(index);
  }
}
