import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/features/search/data/repos/search_repo.dart';
import 'package:newsly/features/search/presentation/view_model/cubit/search_state.dart';

@Injectable()
class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._searchRepo) : super(SearchInitial());

  final SearchRepo _searchRepo;

  Timer? _searchDebounceTimer;

  String lastQuery = '';

  void onQueryChanged(String query) {
    lastQuery = query;
    _searchDebounceTimer?.cancel();

    _searchDebounceTimer = Timer(Duration(milliseconds: 500), () {
      if (query.trim().isNotEmpty) {
        _searchNews(query);
      } else {
        emit(SearchInitial());
      }
    });
  }

  Future<void> _searchNews(String query) async {
    emit(SearchLoading());
    final result = await _searchRepo.getSearchResults(query: query);
    result.fold(
      (failure) => emit(SearchFailed(failure.getAllMessages())),
      (news) => emit(SearchSucceeded(news)),
    );
  }
}
