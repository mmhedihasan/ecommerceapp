import 'package:ecommerceapp/data/models/network_response.dart';
import 'package:ecommerceapp/data/models/product_details.dart';
import 'package:ecommerceapp/data/models/product_details_model.dart';
import 'package:ecommerceapp/data/services/network_controller.dart';
import 'package:ecommerceapp/data/utility/urls.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductDetailsController extends GetxController {
  bool _getProductDetailsInProgress = false;
  ProductDetails _productDetails = ProductDetails();
  String _errormessage = "";


  bool get getProductDetailsInProgress => _getProductDetailsInProgress;

  ProductDetails get productDetails => _productDetails;

  String get errormessage => _errormessage;

  Future<bool> getProductDetails(int id) async {
    _getProductDetailsInProgress = true;
    update();
    final NetworkResponse response =
        await NetworkCaller().getRequest(Urls.getProductDetails(id));
    _getProductDetailsInProgress = false;
    if (response.isSuccess) {
      _productDetails = ProductDetailsModel.fromJson(response.responseJson ?? {}).data!.first;
      update();
      return true;
    } else {
      _errormessage ="Product details page failed ! try again";
      update();
      return false;
    }
}

}