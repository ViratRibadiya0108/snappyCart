import 'package:flutter/material.dart';
import 'package:snappycart/core/service/app_color.dart';
// import 'package:your_app/core/service/app_color.dart'; // Adjust the path as necessary

class GetStartedButton extends StatelessWidget {
  final bool isWeb;
  final VoidCallback onTap;

  const GetStartedButton({
    super.key,
    required this.isWeb,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      child: isWeb
          ? Container(
              height: screenHeight * 0.05,
              width: screenWidth * 0.12,
              decoration: BoxDecoration(
                color: AppColors.fullBlack,
                border: Border.all(color: AppColors.white),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(color: AppColors.white, fontSize: 18),
                ),
              ),
            )
          : Container(
              height: screenHeight * 0.07,
              width: screenWidth * 0.4,
              decoration: BoxDecoration(
                color: AppColors.fullBlack,
                border: Border.all(color: AppColors.white),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: Center(
                child: Text(
                  "Get Started",
                  style: TextStyle(color: AppColors.white, fontSize: 18),
                ),
              ),
            ),
    );
  }
}
