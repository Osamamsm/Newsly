import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/features/settings/data/repos/settings_repo.dart';
import 'package:newsly/features/settings/presentation/view_model/settings_cubit/settings_state.dart';

@injectable
class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(this._repo) : super(SettingsState.initial()) {
    final interests = _repo.getInterests();
    emit(state.copyWith(interests: interests));
  }

  final SettingsRepo _repo;

  void updateInterests(List<String> interests) async {
    await _repo.setInterests(interests);
    emit(state.copyWith(interests: interests));
  }

  List<String> getInterests() {
    return _repo.getInterests();
  }

  void setLocale(String language) async {
    await _repo.setLocale(language);
    emit(state.copyWith(locale: language));
  }

  String getLocale() {
    return _repo.getLocale();
  }
}
