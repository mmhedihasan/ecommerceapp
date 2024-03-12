import 'package:ecommerceapp/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key, required this.title, required this.onTap,
  });
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),),
        TextButton(onPressed: onTap, child: const Text("See All", style: TextStyle(
          color: AppColors.primarySwatch,
        ),),),
      ],
    );
  }
}