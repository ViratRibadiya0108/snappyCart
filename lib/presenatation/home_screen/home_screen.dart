import 'package:flutter/material.dart';
import 'package:snappycart/core/service/app_data/app_color.dart';
import 'package:snappycart/core/service/app_data/app_strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isWeb = constraints.maxWidth > 600;
      return isWeb
          ? Scaffold(
              appBar: AppBar(
                toolbarHeight: 150,
                title: Row(
                  children: [
                    Image.asset(
                      'assets/logo/scapic.png',
                      height: 70,
                      width: 180,
                      // Adjust the width as needed
                      fit: BoxFit.fill, // Ensure the image scales correctly
                    ),
                    const Row(
                      children: [
                        Text(AppStrings.shop),
                        Text(AppStrings.about),
                        Text(AppStrings.faq),
                        Text(AppStrings.gifcard),
                        Text(AppStrings.contect),
                      ],
                    ),
                  ],
                ),
              ),
              // ignore: avoid_unnecessary_containers
              body: Container(
                  child: Image.network(
                'https://raw.githubusercontent.com/ViratRibadiya0108/yoyo/main/assets/product.png',
              )),
            )
          : Scaffold(
              appBar: AppBar(
                leading: const Icon(Icons.menu),
                title: Text(
                  'GemStore',
                  style: TextStyle(fontSize: 18, color: AppColors.black),
                ),
                actions: const [Icon(Icons.notification_add)],
              ),
            );
    });
  }
}
