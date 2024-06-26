import 'package:flutter/material.dart';
import 'package:food_delivery_app_301/common/widgets/order_item.dart';
import 'package:food_delivery_app_301/core/models/meal.dart';
import 'package:food_delivery_app_301/ui/orders/order_view_model.dart';
import 'package:stacked/stacked.dart';

class OrdersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OrdersViewModel>.reactive(
        viewModelBuilder: () => OrdersViewModel(),
        onViewModelReady: (model) => model.init(),
        disposeViewModel: false,
        builder: (context, model, widget) => model.isBusy
            ? Center(child: CircularProgressIndicator())
            : Scaffold(
                appBar: AppBar(
                  title: Text(
                    "Orders",
                  ),
                ),
                body: model.orders == null
                    ? Center(
                        child: Text("You have no Orders"),
                      )
                    : Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: model.orders!.length,
                              padding: EdgeInsets.all(4),
                              itemBuilder: (context, index) {
                                var meal = model.orders!.getAt(index) as Meal?;
                                return OrdersMealListItem(meal: meal);
                              },
                            ),
                          ),
                          SizedBox(
                            height: kBottomNavigationBarHeight + 40,
                          )
                        ],
                      ),
              ));
  }
}