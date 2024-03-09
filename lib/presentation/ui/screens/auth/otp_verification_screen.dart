import 'package:ecommerceapp/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Center(
                    child: SvgPicture.asset(
                  ImagesAssets.craftyBayLogoSVG,
                  width: 100,
                )),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Enter Your OTP Code",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 28,
                      ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "A 4 digit code has been sent",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                ),
                const SizedBox(
                  height: 22,
                ),
                PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    activeColor: AppColors.primarySwatch,
                    inactiveColor: AppColors.primarySwatch,
                    selectedColor: Colors.green,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v) {
          
                  },
                  onChanged: (value) {
          
                  },
                  beforeTextPaste: (text) {
                    return true;
                  }, appContext: context,
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Next"),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(text: "This code expire in "),
                      TextSpan(
                        text: "120s",
                        style: TextStyle(
                          color: AppColors.primarySwatch,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey,
                  ),
                  child: const Text("Resend"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
