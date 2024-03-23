import 'package:ecommerceapp/application/state_holder_binder.dart';
import 'package:ecommerceapp/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:ecommerceapp/presentation/ui/screens/auth/email_verification_screen.dart';
import 'package:ecommerceapp/presentation/ui/screens/main_bottom_nav_screen.dart';
import 'package:ecommerceapp/presentation/ui/screens/splash_screen.dart';
import 'package:ecommerceapp/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const SplashScreen(),
        initialBinding: StateHolderBinder(),
        theme: ThemeData(
        primaryColor: AppColors.primarySwatch,
        primarySwatch: AppColors.primarySwatch,
        primaryTextTheme: const TextTheme(
          titleMedium: TextStyle(
            color: Colors.black,
          ),
        ),
        progressIndicatorTheme: const ProgressIndicatorThemeData(
          color: AppColors.primarySwatch
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primarySwatch,
        ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: AppColors.primarySwatch,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              padding: const EdgeInsets.symmetric(vertical: 16),
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                letterSpacing: 0.5,
                fontWeight: FontWeight.w600,
              ),
              //text (and icon)
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
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
          ),

      ),
    );
  }
}


