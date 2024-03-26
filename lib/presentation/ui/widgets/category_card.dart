import 'package:ecommerceapp/data/models/category_data.dart';
import 'package:ecommerceapp/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryData,
  });

  final CategoryData categoryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColors.primarySwatch.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.network(categoryData.categoryImg ?? '', height: 50,),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          categoryData.categoryName ?? '',
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.primarySwatch,
            letterSpacing: 0.4,
          ),
        ),
      ],
    );
  }
}
