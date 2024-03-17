import 'package:ecommerceapp/presentation/ui/screens/product_details_screen.dart';
import 'package:ecommerceapp/presentation/ui/utility/app_colors.dart';
import 'package:ecommerceapp/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: (){
        Get.to(const ProductDetailsScreen());
      },
      child: Card(
        shadowColor: AppColors.primarySwatch.withOpacity(0.1),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
          width: 130,
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: AppColors.primarySwatch.withOpacity(0.1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  image: const DecorationImage(
                      image: AssetImage(
                        ImagesAssets.craftyshoe,
                      ),fit: BoxFit.contain),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nike shoe a501205",
                      maxLines: 1,
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(height: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$90", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColors.primarySwatch,
                        ),),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              size: 18,
                              color: Colors.amber,
                            ),
                            Text("4.5", style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.blueGrey,
                            ),),
                          ],
                        ),
                        Card(
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}