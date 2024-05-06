import 'package:food_delivery_app_301/core/error/error_extension.dart';
import 'package:food_delivery_app_301/core/error/error_separator.dart';
import 'package:food_delivery_app_301/core/models/response/area_list_response.dart';
import 'package:food_delivery_app_301/core/models/response/category_list_response.dart';
import 'package:food_delivery_app_301/core/models/response/ingredient_list_response.dart';
import 'package:food_delivery_app_301/core/models/response/meal_detail_list_response.dart';
import 'package:food_delivery_app_301/core/models/response/meal_list_response.dart';
import 'package:food_delivery_app_301/core/services/api_service.dart';

import '../models/response/categories_response.dart';

class Repository{
  final ApiService _apiService;
  final ErrorSeparator _errorSeparator;

  Repository(this._apiService, this._errorSeparator);

  Future<Categories> getCategories() async{
      return await _apiService.getCategories();
  }

  Future<CategoryListResponse> getCategoryList(String category) async{
    return await _apiService
    .getCategoryList(category)
    .catchError((error) => throw _errorSeparator.createError(error, StackTrace.current).handle());
  }
  Future<AreaListReponse> getAreaList(String area) async{
    return await _apiService
    .getAreaList(area)
    .catchError((error) => throw _errorSeparator.createError(error, StackTrace.current).handle());
  }

  Future<IngredientsListResponse> getIngredientsList(String ingredients) async{
    return await _apiService
    .getIngredientsList(ingredients)
    .catchError((error) => throw _errorSeparator.createError(error, StackTrace.current).handle());
  }

  Future<MealListResponse> getMealByCategory(String category) async{
    return await _apiService
    .filterByCategory(category)
    .catchError((error) => throw _errorSeparator.createError(error, StackTrace.current).handle());
  }

  Future<MealListResponse> getMealsByArea(String area) async{
    return await _apiService
    .filterByArea(area)
    .catchError((error) => throw _errorSeparator.createError(error, StackTrace.current).handle());
  }

  Future<MealListResponse> getMealsByIngredients(String ingredient) async{
    return await _apiService
    .filterByIngredients(ingredient)
    .catchError((error) => throw _errorSeparator.createError(error, StackTrace.current).handle());
  }

  Future<MealDetailListResponse> getMealById(String id) async{
    return await _apiService
    .getMealById(id)
    .catchError((error) => throw _errorSeparator.createError(error, StackTrace.current).handle());
  }

  Future<MealDetailListResponse> getMeal(String mealId) async {
    return await _apiService
    .getMealById(mealId)
    .catchError((error) => throw _errorSeparator.createError(error, StackTrace.current).handle());
  }

  Future<MealDetailListResponse> searchMealByName(String search) async {
    return await _apiService
    .searchMealByName(search)
    .catchError((error) => throw _errorSeparator.createError(error, StackTrace.current).handle());
  }
}

