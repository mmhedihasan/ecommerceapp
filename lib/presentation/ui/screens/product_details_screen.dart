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
                Text("Addider Shoe Black4050, Deatails shoe"),

              ],
            )
          ],
        ),
      ),
    );
  }
}
