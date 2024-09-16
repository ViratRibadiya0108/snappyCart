import 'package:flutter/material.dart';
import 'package:snappycart/core/service/app_color.dart';

class ImageIndexIndicator extends StatelessWidget {
  const ImageIndexIndicator({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    // int _currentIndex = 0;

    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 7.0),
          width:  12.0 , // Expands if active
          height:  12.0 ,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? AppColors.white : AppColors.fullBlack,
            border: Border.all(
              color: AppColors.white, // Set the border color to white
              width: 1.0, // Adjust the width as needed
            ),
          ),
          // decoration: BoxDecoration(
          //   shape: BoxShape.circle,
          //   color: isActive ? Colors.blueAccent : Colors.grey,
          //   boxShadow: [
          //     if (isActive)
          //      const BoxShadow(
          //         color: Colors.blueAccent,
          //         spreadRadius: 3,
          //         blurRadius: 6,
          //       ),
          //   ],
          // ),
          
        )
      ],
    );
  }
}
