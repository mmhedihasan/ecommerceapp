import 'package:ecommerceapp/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:ecommerceapp/presentation/ui/utility/app_colors.dart';
import 'package:ecommerceapp/presentation/ui/widgets/custom_stepper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Carts" , style: TextStyle(
          color: Colors.black,
        ),),
        elevation: 4,
        leading:  IconButton(
          onPressed: (){
            Get.find<MainBottomNavController>().backToHome();
          }, icon: const Icon(Icons.arrow_back),color: Colors.black,),
      ),
      body:  Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Card(child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 8,),
                    Expanded(child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Bata New shoe #5kso90", style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),),
                                  const SizedBox(height: 4,),
                                  RichText(text: TextSpan(
                                    style: TextStyle(
                                      color: Colors.black54,
                                    ),
                                    children: [
                                      TextSpan(text: "Color: Black"),
                                      TextSpan(text: "Size: 24"),
                                    ],
                                  ),),
                                ],
                              ),
                            ),
                           IconButton(onPressed: (){}, icon: const Icon(Icons.delete)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$1000", style: TextStyle(
                              color: AppColors.primarySwatch,
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                            ),),
                            CustomStepper(lowerLimit: 1, upperLimit: 10, stepValue: 1, value: 1, onChange: (int value){})
                          ],
                        )
                      ],
                    ))
                  ],
                ),),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
                color: AppColors.primarySwatch.withOpacity(0.1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Price", style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black54,
                    ),),
                    Text("\$1000" , style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: AppColors.primarySwatch,
                    ),),
                  ],
                ),
                SizedBox(
                    width: 120,
                    child: ElevatedButton(onPressed: (){}, child: const Text("Checkout"),)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
