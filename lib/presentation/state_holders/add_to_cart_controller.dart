
import 'package:ecommerceapp/data/services/network_controller.dart';
import 'package:get/get.dart';

import '../../data/models/network_response.dart';
import '../../data/utility/urls.dart';

class AddToCartController extends GetxController{
  bool _addToCartInProgress = false;

  bool get addToCartInProgress => _addToCartInProgress;
  String _message = '';

  String get message => _message;

  // Future<bool> addToCart(int productId,String color,String size) async {
  //   _addToCartInProgress = true;
  //   update();
  //   final NetworkResponse response =
  //   await NetworkCaller.postRequest(Urls.addToCart,{
  //
  //     "product_id":productId,
  //     "color":color,
  //     "size":size
  //
  //
  //   });
  //   _addToCartInProgress = false;
  //   update();
  //   if (response.isSuccess) {
  //     return true;
  //   } else {
  //     _message = 'add to cart failed! Try again';
  //     return false;
  //   }
  // }



}