import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utility/image_assets.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
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
              Text("Enter Your OTP Code", style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: 28,
              ),),
              const SizedBox(height: 5,),
              Text("A 4 digit code has been sent", style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.grey,
                fontSize: 16,
              ),),
              const SizedBox(height: 22,),
              TextFormField(),
              const SizedBox(height: 16,),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (){

                      }, child: const Text("Next")))

            ],
          ),
        ),
      ),
    );
  }
}
