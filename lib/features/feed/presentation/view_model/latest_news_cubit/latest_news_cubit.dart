import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/core/networking/connectivity_service.dart';
import 'package:newsly/features/feed/data/repos/feed_repo.dart';
import 'package:newsly/features/feed/presentation/view_model/latest_news_cubit/latest_news_state.dart';

@Injectable()
class LatestNewsCubit extends Cubit<LatestNewsState> {
  final ConnectivityService connectivityService;
  late final StreamSubscription<bool> subscription;
  final FeedRepo _feedRepo;

  LatestNewsCubit(this._feedRepo, this.connectivityService)
    : super(LatestNewsInitial()) {
    subscription = connectivityService.connectivityStream.listen((online) {
      if (online) getLatestNews();
    });
  }

  Future<void> getLatestNews() async {
    emit(LatestNewsLoading());
    final result = await _feedRepo.getLatestNews();
    result.fold(
      (failure) => emit(LatestNewsFailure(failure.getAllMessages())),
      (news) => emit(LatestNewsLoaded(news)),
    );
  }
}
