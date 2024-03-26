import 'package:ecommerceapp/presentation/state_holders/category_controller.dart';
import 'package:ecommerceapp/presentation/state_holders/home_slider_controller.dart';
import 'package:ecommerceapp/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:ecommerceapp/presentation/state_holders/new_product_controller.dart';
import 'package:ecommerceapp/presentation/state_holders/popular_product_controller.dart';
import 'package:ecommerceapp/presentation/state_holders/special_product_controller.dart';
import 'package:ecommerceapp/presentation/ui/screens/cart_screen.dart';
import 'package:ecommerceapp/presentation/ui/screens/category_list_screen.dart';
import 'package:ecommerceapp/presentation/ui/screens/home_screen.dart';
import 'package:ecommerceapp/presentation/ui/screens/wish_list_screen.dart';
import 'package:ecommerceapp/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  // MainBottomNavController mainBottomNavController= Get.put(MainBottomNavController());
  final List<Widget> _screens= [
    const HomeScreen(),
    const CategoryListScreen(),
    const CartScreen(),
    const WishListScreen(),
  ];
@override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.find<HomeSlidersController>().getHomeSliders();
      Get.find<CategoryController>().getCategories();
      Get.find<PopularProductController>().getPopularProducts();
      Get.find<SpecialProductController>().getSpecialProducts();
      Get.find<NewProductController>().getNewProducts();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<MainBottomNavController>(
        init: MainBottomNavController(),
      builder: (controller) {
        return Scaffold(
          body: _screens[controller.currentSelectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentSelectedIndex,
            onTap: controller.changeScreen,
            selectedItemColor: AppColors.primarySwatch,
             unselectedItemColor: Colors.grey,
             showUnselectedLabels: true,
             elevation: 4,
             items: const [
               BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
               BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Categories"),
               BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
               BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "WishList"),
             ],
          ),
        );
      }
    );
  }
}
