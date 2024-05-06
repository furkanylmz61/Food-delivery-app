
import 'package:food_delivery_app_301/app/app_base_view_model.dart';
import 'package:food_delivery_app_301/core/models/response/category_response.dart';

class HomeViewModel extends AppBaseViewModel{
  List<MealCategory>? categories;
  init(){
    repository.getCategories().then((value) {
      categories = value.categories;
      notifyListeners();
      
    });
  }

  void getCategoryByName(String category) {
      repository.getMealByCategory(category).then((value) => {
        print(value)
      }).catchError((onError) {
        setError(onError);
        print(onError);
      });
  }
}