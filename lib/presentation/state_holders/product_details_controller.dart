import 'package:ecommerceapp/data/models/network_response.dart';
import 'package:ecommerceapp/data/models/product_details_model.dart';
import 'package:ecommerceapp/data/services/network_controller.dart';
import 'package:get/get.dart';

import '../../data/models/product_details.dart';
import '../../data/utility/urls.dart';

class ProductDetailsController extends GetxController{
  bool _getProductDetailsInProgress = false;
  ProductDetails _productDetails =ProductDetails();
  String _errorMessage ='';
  List<String> _availableColors=[];

  bool get getProductDetailsInProgress => _getProductDetailsInProgress;
  ProductDetails get productDetails => _productDetails;


  List<String> get availableColors => _availableColors;



  String get errorMessage => _errorMessage;



  Future<bool> getProductDetails(int id) async{
    _getProductDetailsInProgress =true;
    update();
    final NetworkResponse response =await NetworkCaller().getRequest(Urls.getProductDetails(id));
    _getProductDetailsInProgress =false;
    if (response.isSuccess){
      _productDetails =ProductDetailsModel.fromJson(response.responseJson ?? {}).data!.first;
      _convertStringToColor(_productDetails.color ?? '');
      update();
      return true;
    }else{
      _errorMessage = 'Fetch product details has been failed';
      update();
      return false;


    }
  }
  void _convertStringToColor(String color) {
    _availableColors.clear();
    final List<String> splittedcolors = color.split(',');
    for (String c in splittedcolors) {
      if (c.isNotEmpty) {
        _availableColors.add(c);
      }
    }
  }
}
