import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/features/feed/data/repos/feed_repo.dart';
import 'package:newsly/features/feed/presentation/view_model/for_you_news_cubit/for_you_news_state.dart';

@Injectable()
class ForYouNewsCubit extends Cubit<ForYouNewsState> {
  ForYouNewsCubit(this._feedRepo) : super(ForYouNewsInitial());

  final FeedRepo _feedRepo;

  Future<void> getForYouNews(List<String> categories) async {
    emit(ForYouNewsLoading());
    final result = await _feedRepo.getForYouNews(categories: categories);
    result.fold(
      (failure) => emit(ForYouNewsFailure(failure.getAllMessages())),
      (news) => emit(ForYouNewsLoaded(news)),
    );
  }
}
