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
      disposeViewModel: false,
      builder: (context, viewModel,child) =>  Scaffold(
      body:  getViewForIndex(viewModel.currentTabIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        
        items: [
        createNavItem(TabItem.Home),
        createNavItem(TabItem.Search),
        createNavItem(TabItem.Orders),
        createNavItem(TabItem.Profile)
      ],
      onTap: (value){
        viewModel.setTabIndex(value);
      },
      currentIndex: viewModel.currentTabIndex,
      ),
    ));
  }

}