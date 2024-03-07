import 'package:ecommerceapp/presentation/ui/screens/splash_screen.dart';
import 'package:ecommerceapp/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const SplashScreen(),
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
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(AppColors.primarySwatch,), //button color
              foregroundColor: MaterialStateProperty.all<Color>(Color(0xffffffff),), //text (and icon)
            ),
          ),

      ),
    );
  }
}
