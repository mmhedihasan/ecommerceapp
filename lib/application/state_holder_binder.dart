import 'package:ecommerceapp/presentation/state_holders/category_controller.dart';
import 'package:ecommerceapp/presentation/state_holders/email_verification_controller.dart';
import 'package:ecommerceapp/presentation/state_holders/home_slider_controller.dart';
import 'package:ecommerceapp/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:ecommerceapp/presentation/state_holders/new_product_controller.dart';
import 'package:ecommerceapp/presentation/state_holders/otp_verification_controller.dart';
import 'package:ecommerceapp/presentation/state_holders/popular_product_controller.dart';
import 'package:ecommerceapp/presentation/state_holders/product_details_controller.dart';
import 'package:ecommerceapp/presentation/state_holders/special_product_controller.dart';
import 'package:get/get.dart';

class StateHolderBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
    Get.put(EmailVerificationController());
    Get.put(OtpVerificationController());
    Get.put(HomeSlidersController());
    Get.put(CategoryController());
    Get.put(PopularProductController());
    Get.put(SpecialProductController());
    Get.put(NewProductController());
    Get.put(ProductDetailsController());
  }

}