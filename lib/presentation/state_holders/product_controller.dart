import 'package:ecommerceapp/data/models/network_response.dart';
import 'package:ecommerceapp/data/models/product_model.dart';
import 'package:ecommerceapp/data/services/network_controller.dart';
import 'package:ecommerceapp/data/utility/urls.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductController extends GetxController {
  bool _getPopularProductsInProgress = false;
  ProductModel _popularProductModel = ProductModel();
  String _errormessage = "";

  bool get getPopularProductsInProgress => _getPopularProductsInProgress;

  ProductModel get popularProductModel => _popularProductModel;

  String get errormessage => _errormessage;

  Future<bool> getPopularProducts() async {
    _getPopularProductsInProgress = true;
    update();
    final NetworkResponse response =
        await NetworkCaller().getRequest(Urls.getProductByRemarks('popular'));
    _getPopularProductsInProgress = false;
    if (response.isSuccess) {
      _popularProductModel = ProductModel.fromJson(response.responseJson ?? {});
      update();
      return true;
    } else {
      _errormessage ="Popular product page faild ! try again";
      update();
      return false;
    }
  }
}