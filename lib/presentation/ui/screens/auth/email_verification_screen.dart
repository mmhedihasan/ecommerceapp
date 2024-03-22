import 'package:ecommerceapp/presentation/state_holders/email_verification_controller.dart';
import 'package:ecommerceapp/presentation/ui/screens/auth/otp_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utility/image_assets.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 80),
                Center(
                  child: SvgPicture.asset(
                    ImagesAssets.craftyBayLogoSVG,
                    width: 100,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  "Welcome Back", // Enclosed in quotation marks
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Please Enter Your Email Address", // Enclosed in quotation marks
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 22),
                TextFormField(
                  controller: _emailTEController,
                  decoration: const InputDecoration(
                    hintText: "Email",
                  ),
                  validator: (String? text) {
                    if (text?.isEmpty ?? true) {
                      return "Enter your email address";
                    } else if (text!.isEmail == false) {
                      return "Enter your valid email address";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: GetBuilder<EmailVerificationController>(
                    builder: (controller) {
                      if (controller.emailVerificationInProgress) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            verifyEmail(controller);
                          }
                        },
                        child: const Text("Next"),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> verifyEmail(EmailVerificationController controller) async {
    final response =
    await controller.verifyEmail(_emailTEController.text.trim());
    if (response) {
      Get.to(()=> const OTPVerificationScreen());
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Email Verification Fails, Try again"),
          ),
        );
      }
    }
  }
}
