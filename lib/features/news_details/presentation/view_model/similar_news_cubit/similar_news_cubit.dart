import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/features/news_details/data/repos/similar_news_repo.dart';
import 'package:newsly/features/news_details/presentation/view_model/similar_news_cubit/similar_news_state.dart';


@Injectable()
class SimilarNewsCubit extends Cubit<SimilarNewsState> {
  SimilarNewsCubit(this._similarNewsRepo) : super(SimilarNewsInitial());

  final SimilarNewsRepo _similarNewsRepo;


  Future<void> getSimilarNews(List<String> keyWords) async {
    emit(SimilarNewsLoading());
    final result = await _similarNewsRepo.getSimilarNews(keyWords: keyWords);
    result.fold(
      (failure) => emit(SimilarNewsFailure(failure.getAllMessages())),
      (news) => emit(SimilarNewsLoaded(news)),
    );
  }
}
