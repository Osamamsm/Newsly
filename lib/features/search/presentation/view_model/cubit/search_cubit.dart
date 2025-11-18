import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/features/search/data/repos/search_repo.dart';
import 'package:newsly/features/search/presentation/view_model/cubit/search_state.dart';

@Injectable()
class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._searchRepo) : super(SearchInitial());

  final SearchRepo _searchRepo;

  Future<void> searchNews(String searchText) async {
    emit(SearchLoading());
    final result = await _searchRepo.getSearchResults(searchText: searchText);
    result.fold(
      (failure) => emit(SearchFailed(failure.getAllMessages())),
      (news) => emit(SearchSucceeded(news)),
    );
  }
}
