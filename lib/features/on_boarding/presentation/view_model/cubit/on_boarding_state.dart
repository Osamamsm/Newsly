import 'package:equatable/equatable.dart';

class OnBoardingState extends Equatable {
  final int currentPage;
  final bool isLastPage;

  const OnBoardingState({required this.currentPage, required this.isLastPage});

  @override
  List<Object> get props => [currentPage, isLastPage];
}
