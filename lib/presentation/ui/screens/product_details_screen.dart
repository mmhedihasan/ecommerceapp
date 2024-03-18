import 'package:ecommerceapp/presentation/ui/widgets/custom_stepper.dart';
import 'package:ecommerceapp/presentation/ui/widgets/home/product_image_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                 ProductImageSlider(),
                AppBar(
                  leading: const BackButton(
                    color: Colors.black54,
                  ),
                  title: Text("Product Details", style: TextStyle(
                    color: Colors.black54,
                  ),),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
              ],
            ),
            Row(
              children: [
                const Expanded(child: Text("Adder Shoe Black4050, Black Edition", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.5,
                ),),),
                CustomStepper(lowerLimit: 1, upperLimit: 10, stepValue: 1, value: 1, onChange: (newValue){
                    print(newValue);
                },),
              ],
            )
          ],
        ),
      ),
    );
  }
}
