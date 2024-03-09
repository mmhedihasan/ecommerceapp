
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utility/image_assets.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Center(
                    child: SvgPicture.asset(
                      ImagesAssets.craftyBayLogoSVG,
                      width: 100,
                    )),
                const SizedBox(height: 16,),
                Text("Complete Profile", style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 28,
                ),),
                const SizedBox(height: 5,),
                Text("Get Started with us with your details", style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.grey,
                  fontSize: 16,
                ),),
                const SizedBox(height: 22,),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "First Name",
                  ),
                ),
                const SizedBox(height: 12,),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Last Name",
                  ),
                ),
                const SizedBox(height: 12,),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Mobile",
                  ),
                ),
                const SizedBox(height: 12,),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "City",
                  ),
                ),
                const SizedBox(height: 12,),
                TextFormField(
                  maxLines: 4,
                  decoration: const InputDecoration(
                    hintText: "Shipping address",
                    contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 16)
                  ),
                ),
                const SizedBox(height: 16,),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: (){
                        }, child: const Text("Complete")))
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
