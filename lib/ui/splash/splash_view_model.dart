
import 'package:food_delivery_app_301/app/app.router.dart';
import 'package:food_delivery_app_301/app/app_base_view_model.dart';

class SplashViewModel extends AppBaseViewModel{
  init(){

      Future<void>.delayed(const Duration(milliseconds: 2000),() {
        navigationService.navigateTo(Routes.mainView);
      });
  }
}