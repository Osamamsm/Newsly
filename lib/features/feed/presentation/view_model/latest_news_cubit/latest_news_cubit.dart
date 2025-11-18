import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/features/feed/data/repos/feed_repo.dart';
import 'package:newsly/features/feed/presentation/view_model/latest_news_cubit/latest_news_state.dart';


@Injectable()
class LatestNewsCubit extends Cubit<LatestNewsState> {
  LatestNewsCubit(this._feedRepo) : super(LatestNewsInitial());

  final FeedRepo _feedRepo;



  Future<void> getLatestNews() async {
    emit(LatestNewsLoading());
    final result = await _feedRepo.getLatestNews();
    result.fold(
      (failure) => emit(LatestNewsFailure(failure.getAllMessages())),
      (news) => emit(LatestNewsLoaded(news)),
    );
  }
}
