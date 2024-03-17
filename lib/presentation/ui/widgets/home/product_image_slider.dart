import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';

class ProductImageSlider extends StatefulWidget {
  const ProductImageSlider({super.key});

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  final ValueNotifier<int> _selectedSlider = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 300.0,
            viewportFraction: 1,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 4),
            onPageChanged: (int page, _) {
              _selectedSlider.value = page;
            },
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration:  BoxDecoration(color: Colors.grey.shade400),
                  alignment: Alignment.center,
                  child: Text(
                    'text $i',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                );
              },
            );
          }).toList(),
        ),

        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: ValueListenableBuilder(
            valueListenable: _selectedSlider,
            builder: (context, value, _) {
              List<Widget> list = [];
              for (int i = 0; i < 5; i++) {
                list.add(
                  Container(
                    height: 12,
                    width: 12,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: value == i ? AppColors.primarySwatch : Colors.white),
                  ),
                );
              }
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list,
              );
            },
          ),
        ),
      ],
    );

  }
}
