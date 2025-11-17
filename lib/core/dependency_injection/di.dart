import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:newsly/core/networking/app_dio.dart';
import 'di.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void setupDependencies() {
  getIt.init();
  getIt.registerLazySingleton(() => AppDio.create());
}
