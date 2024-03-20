import 'package:ecommerceapp/presentation/ui/utility/app_colors.dart';
import 'package:ecommerceapp/presentation/ui/widgets/custom_stepper.dart';
import 'package:ecommerceapp/presentation/ui/widgets/home/product_image_slider.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<Color> colors = [
    Colors.deepOrange,
    Colors.amber,
    Colors.blue,
    Colors.yellow,
    Colors.black,
    Colors.pink,
  ];

  List<String> sizes=[
    'S',
    'M',
    'L',
    'XL',
    'XXL',
    'XXXL',
  ];
  int _selectedColorIndex = 0;
  int _selectedSizeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        const ProductImageSlider(),
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
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Expanded(
                                child: Text(
                                  "Adder Shoe Black4050, Black Edition",
                                  style: TextStyle(
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
                                  print(newValue);
                                },
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Colors.amber,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Review",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.primarySwatch,
                                      ),
                                    ),
                                  ),
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
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Color",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 25,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: colors.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  borderRadius: BorderRadius.circular(20),
                                  onTap: () {
                                    _selectedColorIndex = index;
                                    if (mounted) {
                                      setState(() {});
                                    }
                                  },
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: colors[index],
                                    child: _selectedColorIndex == index
                                        ? Icon(
                                            Icons.done,
                                            color: Colors.white,
                                          )
                                        : null,
                                  ),
                                );
                              }, separatorBuilder: (BuildContext context, int index) {
                                return const SizedBox(width: 8,);
                            },
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Sizes",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 25,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: sizes.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  borderRadius: BorderRadius.circular(20),
                                  onTap: () {
                                    _selectedSizeIndex = index;
                                    if (mounted) {
                                      setState(() {});
                                    }
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(4),
                                      color: _selectedSizeIndex == index ? AppColors.primarySwatch : null,
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(sizes[index], style: TextStyle(
                                      color: _selectedSizeIndex == index ? Colors.white : null,
                                    ),),
                                  ),
                                );
                              }, separatorBuilder: (BuildContext context, int index) {
                              return const SizedBox(width: 8,);
                            },
                            ),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Text(
                            "Description",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                          ''')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                      Text("Price", style: TextStyle(
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
                      child: ElevatedButton(onPressed: (){}, child: Text("Add To Cart"),)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
