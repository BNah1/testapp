import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

import 'dio.dart';

final GetIt getIt = GetIt.instance;

Future<void> initMain() async {
  await dotenv.load(fileName: '.env');
  getIt.registerLazySingleton(() => DioConfig());
}