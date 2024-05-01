import 'package:flutter/material.dart';
import 'package:food_delivery_app_301/common/helpers/create_bottom_nav_item.dart';
import 'package:food_delivery_app_301/ui/main/main_view_model.dart';
import 'package:stacked/stacked.dart';

class MainView extends StatelessWidget{
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => MainViewModel(),
      onViewModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel,child) =>  Scaffold(
      body:  Center(
        child: Text("App Started"),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        createNavItem(TabItem.Home),
        createNavItem(TabItem.Search),
        createNavItem(TabItem.Orders),
        createNavItem(TabItem.Profile)
      ],),
    ));
  }

}