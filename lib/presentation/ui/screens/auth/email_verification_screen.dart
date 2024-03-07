import 'package:ecommerceapp/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utility/image_assets.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 80,),
              Center(
                  child: SvgPicture.asset(
                    ImagesAssets.craftyBayLogoSVG,
                    width: 100,
                  )),
              const SizedBox(height: 16,),
              Text("Welcome Back", style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: 28,
              ),),
              const SizedBox(height: 8,),
              Text("Please Enter Your Email Address", style: Theme.of(context).textTheme.titleMedium?.copyWith(
               color: Colors.grey,
              ),),
              const SizedBox(height: 16,),
              const TextField(decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),),
              const SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.zero)),
                      padding: const EdgeInsets.symmetric(vertical: 22),
                      textStyle: const TextStyle(
                        fontSize: 12,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                      onPressed: (){}, child: const Text("Next")))

            ],
          ),
        ),
      ),
    );
  }
}
