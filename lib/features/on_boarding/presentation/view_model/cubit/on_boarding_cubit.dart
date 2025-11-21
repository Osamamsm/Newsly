import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/features/on_boarding/data/repos/on_boarding_repo.dart';
import 'package:newsly/features/on_boarding/presentation/view_model/cubit/on_boarding_state.dart';

@injectable
class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit(this._repo,@factoryParam this.totalPages )
    : super(OnBoardingState(currentPage: 0, isLastPage: false));

  final OnBoardingRepo _repo;
  final int totalPages;

  void pageChanged(int index) {
    emit(
      OnBoardingState(currentPage: index, isLastPage: index == totalPages - 1),
    );
  }

  Future<void> completeOnBoarding() async {
    await _repo.setOnBoardingAsSeen();
  }
}
