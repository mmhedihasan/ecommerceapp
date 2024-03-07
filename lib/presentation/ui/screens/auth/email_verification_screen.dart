import 'package:ecommerceapp/presentation/ui/screens/auth/otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

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
              const SizedBox(height: 5,),
              Text("Please Enter Your Email Address", style: Theme.of(context).textTheme.titleMedium?.copyWith(
               color: Colors.grey,
                fontSize: 16,
              ),),
              const SizedBox(height: 22,),
               TextFormField(
                 decoration: const InputDecoration(
                   hintText: "Email",
                 ),
               ),
              const SizedBox(height: 16,),
              SizedBox(
                width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){
                        Get.to(const OTPVerificationScreen());
                      }, child: const Text("Next")))

            ],
          ),
        ),
      ),
    );
  }
}
