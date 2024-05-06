import 'package:flutter/material.dart';
import 'package:food_delivery_app_301/ui/splash/splash_view_model.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget{
  const SplashView({super.key});



  @override
  Widget build(BuildContext context) {
      return ViewModelBuilder<SplashViewModel>.reactive(
        viewModelBuilder: () => SplashViewModel(),
        onViewModelReady: (model) => model.init(),
        builder: (context, viewModel,child) => const Scaffold(
          backgroundColor: Colors.lightBlue,
          body: Center(
            child: Text("Food Delivery App", style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),),
        ),
      ));
  }
}
