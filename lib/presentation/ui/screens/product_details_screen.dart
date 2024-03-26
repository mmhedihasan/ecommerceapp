import 'package:ecommerceapp/data/models/product_details.dart';
import 'package:ecommerceapp/presentation/state_holders/product_details_controller.dart';
import 'package:ecommerceapp/presentation/ui/widgets/bottom_bar_widget.dart';
import 'package:ecommerceapp/presentation/ui/widgets/color_selection_widget.dart';
import 'package:ecommerceapp/presentation/ui/widgets/size_selection_widget.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceapp/presentation/ui/utility/app_colors.dart';
import 'package:ecommerceapp/presentation/ui/widgets/custom_stepper.dart';
import 'package:ecommerceapp/presentation/ui/widgets/home/product_image_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:get/instance_manager.dart';

class ProductDetailsScreen extends StatefulWidget {
  final int productId;
  const ProductDetailsScreen({Key? key, required this.productId}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int _selectedColorIndex = 0;
  int _selectedSizeIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
       Get.find<ProductDetailsController>().getProductDetails(widget.productId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ProductDetailsController>(
        builder: (productDetailsController) {
         if(productDetailsController.getProductDetailsInProgress){
           return const Center(child: CircularProgressIndicator());
         }
          return SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                             ProductImageSlider(
                              imageList: [
                                productDetailsController.productDetails.img1 ?? "",
                                productDetailsController.productDetails.img2 ?? "",
                                productDetailsController.productDetails.img3 ?? "",
                                productDetailsController.productDetails.img4 ?? "",
                              ],
                             ),
                            AppBar(
                              leading: const BackButton(
                                color: Colors.black54,
                              ),
                              title: const Text(
                                "Product Details",
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                   Expanded(
                                    child: Text(
                                      productDetailsController.productDetails.product?.title ?? "",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ),
                                  CustomStepper(
                                    lowerLimit: 1,
                                    upperLimit: 10,
                                    stepValue: 1,
                                    value: 1,
                                    onChange: (newValue) {
                                      // You can add any custom logic here if needed
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              _buildRatingRow(productDetailsController.productDetails),
                              const SizedBox(height: 10),
                              ColorSelectionWidget(
                                colors: const [
                                  Colors.deepOrange,
                                  Colors.amber,
                                  Colors.blue,
                                  Colors.yellow,
                                  Colors.black,
                                  Colors.pink,
                                ],
                                selectedColorIndex: _selectedColorIndex,
                                onColorSelected: (index) {
                                  setState(() {
                                    _selectedColorIndex = index;
                                  });
                                },
                              ),
                              const SizedBox(height: 10),
                              SizeSelectionWidget(
                                sizes: productDetailsController.productDetails.size?.split(",") ?? [],
                                selectedSizeIndex: _selectedSizeIndex,
                                onSizeSelected: (index) {
                                  setState(() {
                                    _selectedSizeIndex = index;
                                  });
                                },
                              ),
                              const SizedBox(height: 14),
                              const Text(
                                "Description",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                                ''',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                BottomBarWidget(),
              ],
            ),
          );
        }
      ),
    );
  }

  Widget _buildRatingRow(ProductDetails productDetails) {
    return Row(
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            const Icon(
              Icons.star,
              size: 18,
              color: Colors.amber,
            ),
             Text(
              "${productDetails.product?.star ?? 0.0}",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Review",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.primarySwatch,
                ),
              ),
            ),
          ],
        ),
        const Card(
          color: AppColors.primarySwatch,
          child: Padding(
            padding: EdgeInsets.all(3.0),
            child: Icon(
              Icons.favorite_border,
              size: 12,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
