import 'package:ecommerceapp/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          )),
    );
  }
}

class CircularIconButton extends StatelessWidget {
  const CircularIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: CircleAvatar(
        radius: 15,
        backgroundColor: Colors.grey.shade200,
        child: Icon(
          icon,
          color: Colors.grey,
          size: 17,
        ),
      ),
    );
  }
}
