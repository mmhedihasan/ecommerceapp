import 'package:ecommerceapp/data/models/network_response.dart';
import 'package:ecommerceapp/data/services/network_controller.dart';
import 'package:ecommerceapp/data/utility/urls.dart';
import 'package:get/get.dart';
import '../../data/models/category_model.dart';

class CategoryController extends GetxController {
  bool _getCategoriesInProgress = false;
  CategoryModel _categoryModel = CategoryModel();
  String _message = "";

  bool get getCategoriesInProgress => _getCategoriesInProgress;

  CategoryModel get categoryModel => _categoryModel;

  String get message => _message;

  Future<bool> getCategories() async {
    _getCategoriesInProgress = true;
    update();
    final NetworkResponse response =
        await NetworkCaller().getRequest(Urls.getCategories);
    _getCategoriesInProgress = false;
    if (response.isSuccess) {
      _categoryModel = CategoryModel.fromJson(response.responseJson ?? {});
      update();
      return true;
    } else {
      _message ="Category not found";
      update();
      return false;
    }
  }
}
