import 'package:flutter/material.dart';

class ColorSelectionWidget extends StatelessWidget {
  final List<Color> colors;
  final int selectedColorIndex;
  final Function(int) onColorSelected;

  const ColorSelectionWidget({
    required this.colors,
    required this.selectedColorIndex,
    required this.onColorSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Color",
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
            itemCount: colors.length,
            itemBuilder: (context, index) => InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () => onColorSelected(index),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: colors[index],
                child: selectedColorIndex == index
                    ? const Icon(
                  Icons.done,
                  color: Colors.white,
                )
                    : null,
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
