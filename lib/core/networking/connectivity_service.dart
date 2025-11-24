import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ConnectivityService {
  final Connectivity _connectivity = Connectivity();

  Stream<bool> get connectivityStream =>
      _connectivity.onConnectivityChanged.map((results) {
        final hasInternet = results.any(
          (status) => status != ConnectivityResult.none,
        );
        return hasInternet;
      });
}