import 'package:food_delivery_app_301/core/models/response/area_list_response.dart';
import 'package:food_delivery_app_301/core/models/response/category_list_response.dart';
import 'package:food_delivery_app_301/core/models/response/ingredient_item_response.dart';
import 'package:food_delivery_app_301/core/models/response/ingredient_list_response.dart';
import 'package:food_delivery_app_301/core/models/response/meal_detail_list_response.dart';
import 'package:food_delivery_app_301/core/models/response/meal_list_response.dart';
import 'package:food_delivery_app_301/core/services/api_service.dart';

import '../models/response/categories_response.dart';

class Repository{
  final ApiService _apiService;

  Repository(this._apiService);

  Future<Categories> getCategories() async{
      return await _apiService.getCategories();
  }

  Future<CategoryListResponse> getCategoryList(String category) async{
    return await _apiService.getCategoryList(category);
  }
  Future<AreaListReponse> getAreaList(String area) async{
    return await _apiService.getAreaList(area);
  }

  Future<IngredientsListResponse> getIngredientsList(String ingredients) async{
    return await _apiService.getIngredientsList(ingredients);
  }

  Future<MealListResponse> getMealByCategory(String category) async{
    return await _apiService.filterByCategory(category);
  }

  Future<MealListResponse> getMealsByArea(String area) async{
    return await _apiService.filterByArea(area);
  }

  Future<MealListResponse> getMealsByIngredients(String ingredient) async{
    return await _apiService.filterByIngredients(ingredient);
  }

  Future<MealDetailListResponse> getMealById(String id) async{
    return await _apiService.getMealById(id);
  }

  Future<MealDetailListResponse> getMeal(String mealId) async {
    return await _apiService.getMealById(mealId);
  }

  Future<MealDetailListResponse> searchMealByName(String search) async {
    return await _apiService.searchMealByName(search);
  }
}

