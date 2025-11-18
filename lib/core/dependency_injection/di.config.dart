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
import 'package:newsly/core/networking/api_service.dart' as _i331;
import 'package:newsly/features/category_news/data/repos/category_news_repo.dart'
    as _i199;
import 'package:newsly/features/category_news/data/repos/category_news_repo_impl.dart'
    as _i1051;
import 'package:newsly/features/category_news/presentation/view_model/cubit/get_category_news_cubit.dart'
    as _i66;
import 'package:newsly/features/home/presentation/view_model/nav_bar_cubit/nav_bar_cubit.dart'
    as _i1;
import 'package:newsly/features/search/data/repos/search_repo.dart' as _i513;
import 'package:newsly/features/search/data/repos/search_repo_impl.dart'
    as _i986;
import 'package:newsly/features/search/presentation/view_model/cubit/search_cubit.dart'
    as _i758;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i1.NavBarCubit>(() => _i1.NavBarCubit());
    gh.lazySingleton<_i331.ApiService>(() => _i331.ApiService(gh<_i361.Dio>()));
    gh.lazySingleton<_i513.SearchRepo>(
      () => _i986.SearchRepoImpl(gh<_i331.ApiService>()),
    );
    gh.lazySingleton<_i199.CategoryNewsRepo>(
      () => _i1051.CategoryNewsRepoImpl(gh<_i331.ApiService>()),
    );
    gh.factory<_i758.SearchCubit>(
      () => _i758.SearchCubit(gh<_i513.SearchRepo>()),
    );
    gh.factory<_i66.GetCategoryNewsCubit>(
      () => _i66.GetCategoryNewsCubit(gh<_i199.CategoryNewsRepo>()),
    );
    return this;
  }
}
