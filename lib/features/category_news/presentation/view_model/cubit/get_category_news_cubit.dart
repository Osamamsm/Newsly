import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsly/features/category_news/data/repos/category_news_repo.dart';
import 'package:newsly/features/category_news/presentation/view_model/cubit/get_category_news_state.dart';

class GetCategoryNewsCubit extends Cubit<GetCategoryNewsState> {
  GetCategoryNewsCubit(this._categoryNewsRepo)
    : super(GetCategoryNewsInitial());

  final CategoryNewsRepo _categoryNewsRepo;

  Future<void> getCategoryNews(String category) async {
    emit(GetCategoryNewsLoading());
    final result = await _categoryNewsRepo.getCategoryNews(category: category);
    result.fold(
      (failure) => emit(GetCategoryNewsError(failure.message!)),
      (news) => emit(GetCategoryNewsLoaded(news)),
    );
  }
}
