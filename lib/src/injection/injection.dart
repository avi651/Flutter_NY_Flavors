import 'package:get_it/get_it.dart';
import 'package:ny_times/src/core/network/dio_network/dio_network.dart';
import 'package:ny_times/src/core/network/log/app_logger.dart';

final sl = GetIt.instance;

class Injection {
  static void init() {
    initDioInjections();
  }
}

Future<void> initDioInjections() async {
  initRootLogger();
  DioNetwork.initDio();
}
