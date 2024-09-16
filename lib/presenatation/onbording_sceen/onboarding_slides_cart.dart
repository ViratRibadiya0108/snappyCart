import 'package:flutter/material.dart';
import 'package:snappycart/core/service/app_color.dart';
import 'package:snappycart/domain/onbording/onbording_model.dart';

class OnboardingSlidesCart extends StatelessWidget {
  const OnboardingSlidesCart({super.key, required this.onbordingSlide, required this.onbordingSlideweb,});
final OnboardingSlideModel onbordingSlide;
final OnboardingSlideModelweb onbordingSlideweb;
  @override
  Widget build(BuildContext context) {
   
     final screenHeight = MediaQuery.of(context).size.height;

    final screenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWeb =
              constraints.maxWidth > 600; 
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
         
          children: [
            Text(
              onbordingSlide.label,style:TextStyle(fontSize: 24,color: AppColors.fullBlack),
            ),
            Text(
              onbordingSlide.subTitle,style: TextStyle(fontSize: 18,color: AppColors.fullBlack),
            ),
            SizedBox(height: screenHeight*0.03,),
             Card(
  elevation: 5, // Shadow effect
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20), // Circular border
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(20), // Ensures the image also has rounded corners
    child: isWeb
        ? SizedBox(
            height: screenHeight * 0.6,
            width: screenWidth * 0.6,
            child: Image.network(
              onbordingSlideweb.image,
              fit: BoxFit.fill,
            ),
          )
        : SizedBox(
            height: screenHeight * 0.6,
            width: screenWidth * 0.8,
            child: Image.network(
              onbordingSlide.image,
              fit: BoxFit.fill,
            ),
          ),
  ),
)

          ],
        );
      }
    );
  }
}