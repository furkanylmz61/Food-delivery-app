import 'package:food_delivery_app_301/core/di/get_it.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AppBaseViewModel extends BaseViewModel{
  
  NavigationService navigationService = getIt<NavigationService>();
  
  initialise(){}
}