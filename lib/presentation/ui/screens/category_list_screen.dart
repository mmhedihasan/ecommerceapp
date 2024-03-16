import 'package:ecommerceapp/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:ecommerceapp/presentation/ui/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (_){
        Get.find<MainBottomNavController>().backToHome();
      },
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Categories" , style: TextStyle(
            color: Colors.black,
          ),),
          elevation: 4,
          leading:  IconButton(
              onPressed: (){
                Get.find<MainBottomNavController>().backToHome();
          }, icon: const Icon(Icons.arrow_back),color: Colors.black,),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 14,
                mainAxisSpacing: 14,
              ),
              itemBuilder: (context, index){
                  return const FittedBox(child: CategoryCard());
              }
          ),
        ),
      ),
    );
  }
}
