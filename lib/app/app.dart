import 'package:food_delivery_app_301/ui/detail/detail_view.dart';
import 'package:food_delivery_app_301/ui/home/home_view.dart';
import 'package:food_delivery_app_301/ui/main/main_view.dart';
import 'package:food_delivery_app_301/ui/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: MainView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: DetailView)
  ],
)
class App{}