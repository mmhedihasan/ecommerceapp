import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerceapp/presentation/ui/utility/app_colors.dart';
import 'package:ecommerceapp/presentation/ui/utility/image_assets.dart';
import 'package:ecommerceapp/presentation/ui/widgets/category_card.dart';
import 'package:ecommerceapp/presentation/ui/widgets/circular_icon_button.dart';
import 'package:ecommerceapp/presentation/ui/widgets/home/home_slider.dart';
import 'package:ecommerceapp/presentation/ui/widgets/home/section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<int> _selectedSlider = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            SvgPicture.asset(
              ImagesAssets.craftyBayNavLogoSVG,
            ),
            const Spacer(),
            CircularIconButton(
              icon: Icons.person,
              onTap: () {},
            ),
            const SizedBox(
              width: 8,
            ),
            CircularIconButton(
              icon: Icons.call,
              onTap: () {},
            ),
            const SizedBox(
              width: 8,
            ),
            CircularIconButton(
              icon: Icons.notifications_none,
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search",
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const HomeSlider(),
               SectionHeader(title: 'All Categories', onTap: () {  },),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 90,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                  return const CategoryCard();
                },),
              ),
              const SizedBox(
                height: 16,
              ),
              SectionHeader(title: 'Popular', onTap: () {  },),
              Card(
                shadowColor: AppColors.primarySwatch.withOpacity(0.1),
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SizedBox(
                  width: 100,
                  child: Column(
                    children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.primarySwatch.withOpacity(0.1),
                          ),
                        ),
                      Text("Nike shoe a501" , maxLines: 1, style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                      ),),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$90"),
                          Wrap(
                            children: [
                              Icon(Icons.star_border, size: 18,color: Colors.amber,),
                              Text("5.0"),
                            ],
                          ),
                          Card(
                            color: AppColors.primarySwatch,
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Icon(Icons.favorite_border, size: 12, color: Colors.white,),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




