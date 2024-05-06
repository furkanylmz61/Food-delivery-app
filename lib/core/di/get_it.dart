import 'package:food_delivery_app_301/app/app_base_view_model.dart';
import 'package:get_it/get_it.dart';
import 'package:stacked_services/stacked_services.dart';

final getIt = GetIt.instance;

void setupDI() {
  getIt.registerLazySingleton(() => AppBaseViewModel());
  getIt.registerLazySingleton(() => NavigationService());
}