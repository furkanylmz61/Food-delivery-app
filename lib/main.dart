import 'package:flutter/material.dart';
import 'package:food_delivery_app_301/app/food_delivery_app.dart';
import 'package:food_delivery_app_301/core/di/get_it.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDI();
  runApp( FoodDeliveryApp());
}
