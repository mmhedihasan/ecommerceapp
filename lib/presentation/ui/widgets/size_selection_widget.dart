import 'package:ecommerceapp/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';

class SizeSelectionWidget extends StatelessWidget {
  final List<String> sizes;
  final int selectedSizeIndex;
  final Function(int) onSizeSelected;

  const SizeSelectionWidget({
    required this.sizes,
    required this.selectedSizeIndex,
    required this.onSizeSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Sizes",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 25,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: sizes.length,
            itemBuilder: (context, index) => InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () => onSizeSelected(index),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4),
                  color: selectedSizeIndex == index
                      ? AppColors.primarySwatch
                      : null,
                ),
                alignment: Alignment.center,
                child: Text(
                  sizes[index],
                  style: TextStyle(
                    color: selectedSizeIndex == index ? Colors.white : null,
                  ),
                ),
              ),
            ),
            separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 8),
          ),
        ),
      ],
    );
  }
}
