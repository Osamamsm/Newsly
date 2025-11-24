// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:newsly/core/database/app_data_base.dart' as _i975;
import 'package:newsly/core/networking/api_service.dart' as _i331;
import 'package:newsly/core/preferences/preferences_module.dart' as _i835;
import 'package:newsly/core/preferences/user_preferences_helper.dart' as _i655;
import 'package:newsly/features/bookmarks/data/repos/book_marks_repo.dart'
    as _i509;
import 'package:newsly/features/bookmarks/data/repos/book_marks_repo_impl.dart'
    as _i190;
import 'package:newsly/features/bookmarks/presentation/view_model/cubit/book_marks_cubit.dart'
    as _i160;
import 'package:newsly/features/category_news/data/repos/category_news_repo.dart'
    as _i199;
import 'package:newsly/features/category_news/data/repos/category_news_repo_impl.dart'
    as _i1051;
import 'package:newsly/features/category_news/presentation/view_model/cubit/get_category_news_cubit.dart'
    as _i66;
import 'package:newsly/features/feed/data/repos/feed_repo.dart' as _i200;
import 'package:newsly/features/feed/data/repos/feed_repo_impl.dart' as _i871;
import 'package:newsly/features/feed/presentation/view_model/for_you_news_cubit/for_you_news_cubit.dart'
    as _i851;
import 'package:newsly/features/feed/presentation/view_model/latest_news_cubit/latest_news_cubit.dart'
    as _i566;
import 'package:newsly/features/home/presentation/view_model/nav_bar_cubit/nav_bar_cubit.dart'
    as _i1;
import 'package:newsly/features/news_details/data/repos/similar_news_repo.dart'
    as _i191;
import 'package:newsly/features/news_details/data/repos/similar_news_repo_impl.dart'
    as _i306;
import 'package:newsly/features/news_details/presentation/view_model/similar_news_cubit/similar_news_cubit.dart'
    as _i825;
import 'package:newsly/features/on_boarding/data/repos/on_boarding_repo.dart'
    as _i687;
import 'package:newsly/features/on_boarding/data/repos/on_boarding_repo_impl.dart'
    as _i1042;
import 'package:newsly/features/on_boarding/presentation/view_model/cubit/on_boarding_cubit.dart'
    as _i687;
import 'package:newsly/features/search/data/repos/search_repo.dart' as _i513;
import 'package:newsly/features/search/data/repos/search_repo_impl.dart'
    as _i986;
import 'package:newsly/features/search/presentation/view_model/cubit/search_cubit.dart'
    as _i758;
import 'package:newsly/features/settings/data/repos/settings_repo.dart'
    as _i1037;
import 'package:newsly/features/settings/data/repos/settings_repo_impl.dart'
    as _i459;
import 'package:newsly/features/settings/presentation/view_model/settings_cubit/settings_cubit.dart'
    as _i328;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final preferencesModule = _$PreferencesModule();
    gh.factory<_i1.NavBarCubit>(() => _i1.NavBarCubit());
    gh.lazySingleton<_i975.AppDataBase>(() => _i975.AppDataBase());
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => preferencesModule.preferences,
      preResolve: true,
    );
    gh.lazySingleton<_i509.BookMarksRepo>(
      () => _i190.BookMarksRepoImpl(gh<_i975.AppDataBase>()),
    );
    gh.lazySingleton<_i331.ApiService>(() => _i331.ApiService(gh<_i361.Dio>()));
    gh.factory<_i160.BookMarksCubit>(
      () => _i160.BookMarksCubit(gh<_i509.BookMarksRepo>()),
    );
    gh.lazySingleton<_i513.SearchRepo>(
      () => _i986.SearchRepoImpl(gh<_i331.ApiService>()),
    );
    gh.lazySingleton<_i687.OnBoardingRepo>(
      () => _i1042.OnBoardingRepoImpl(gh<_i460.SharedPreferences>()),
    );
    gh.factoryParam<_i687.OnBoardingCubit, int, dynamic>(
      (totalPages, _) =>
          _i687.OnBoardingCubit(gh<_i687.OnBoardingRepo>(), totalPages),
    );
    gh.lazySingleton<_i655.UserPreferencesHelper>(
      () => _i655.UserPreferencesHelper(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i191.SimilarNewsRepo>(
      () => _i306.SimilarNewsRepoImpl(gh<_i331.ApiService>()),
    );
    gh.lazySingleton<_i200.FeedRepo>(
      () => _i871.FeedRepoImpl(gh<_i331.ApiService>()),
    );
    gh.factory<_i825.SimilarNewsCubit>(
      () => _i825.SimilarNewsCubit(gh<_i191.SimilarNewsRepo>()),
    );
    gh.lazySingleton<_i199.CategoryNewsRepo>(
      () => _i1051.CategoryNewsRepoImpl(gh<_i331.ApiService>()),
    );
    gh.factory<_i851.ForYouNewsCubit>(
      () => _i851.ForYouNewsCubit(gh<_i200.FeedRepo>()),
    );
    gh.factory<_i566.LatestNewsCubit>(
      () => _i566.LatestNewsCubit(gh<_i200.FeedRepo>()),
    );
    gh.factory<_i758.SearchCubit>(
      () => _i758.SearchCubit(gh<_i513.SearchRepo>()),
    );
    gh.lazySingleton<_i1037.SettingsRepo>(
      () => _i459.SettingsRepoImpl(gh<_i655.UserPreferencesHelper>()),
    );
    gh.factory<_i66.GetCategoryNewsCubit>(
      () => _i66.GetCategoryNewsCubit(gh<_i199.CategoryNewsRepo>()),
    );
    gh.factory<_i328.SettingsCubit>(
      () => _i328.SettingsCubit(gh<_i1037.SettingsRepo>()),
    );
    return this;
  }
}

class _$PreferencesModule extends _i835.PreferencesModule {}
