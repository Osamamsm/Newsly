import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/core/networking/connectivity_service.dart';
import 'package:newsly/features/feed/data/repos/feed_repo.dart';
import 'package:newsly/features/feed/presentation/view_model/for_you_news_cubit/for_you_news_state.dart';

@Injectable()
class ForYouNewsCubit extends Cubit<ForYouNewsState> {
  final ConnectivityService connectivityService;
  late final StreamSubscription<bool> subscription;

  final FeedRepo _feedRepo;
  late final List<String> _categories;

  ForYouNewsCubit(
    this._feedRepo,
    this.connectivityService,
    @factoryParam List<String> categories,
  ) : super(ForYouNewsInitial()) {
    _categories = categories;
    subscription = connectivityService.connectivityStream.listen((online) {
      if (online) getForYouNews(_categories);
    });
  }

  Future<void> getForYouNews(List<String> categories) async {
    emit(ForYouNewsLoading());
    final result = await _feedRepo.getForYouNews(categories: categories);
    result.fold(
      (failure) => emit(ForYouNewsFailure(failure.getAllMessages())),
      (news) => emit(ForYouNewsLoaded(news)),
    );
  }

  @override
  Future<void> close() {
    subscription.cancel();
    return super.close();
  }
}
