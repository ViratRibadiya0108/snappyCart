import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:snappycart/core/service/app_color.dart';
import 'package:snappycart/core/service/app_constans.dart';
import 'package:snappycart/presenatation/onbording_sceen/getstart.dart';
import 'package:snappycart/presenatation/onbording_sceen/image_index_indicator.dart';
import 'package:snappycart/presenatation/onbording_sceen/onboarding_slides_cart.dart';

// ignore: use_key_in_widget_constructors
class OnboardingSlidesScreen extends StatefulWidget {
  @override
  State<OnboardingSlidesScreen> createState() => _OnboardingSlidesScreenState();
}

class _OnboardingSlidesScreenState extends State<OnboardingSlidesScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      bool isWeb = constraints.maxWidth > 600;
      return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
              child: Container(
                color: AppColors.white, // First background color
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height *
                  0.4, // Adjust height as needed
              child: Container(
                color: AppColors.fullBlack, // Second background color
              ),
            ),
            Center(
              child: Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: 3,
                    options: CarouselOptions(
                      height: screenHeight * 0.77,
                      autoPlay: true,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 1100),
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    itemBuilder: (context, index, realIndex) {
                      return AnimatedOpacity(
                        opacity: _currentIndex == index ? 1.0 : 0.0,
                        duration: const Duration(milliseconds: 800),
                        child: OnboardingSlidesCart(
                          onbordingSlide: AppConstans.onbordingSlide[index],
                          onbordingSlideweb:
                              AppConstansWeb.onbordingSlideweb[index],
                        ),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      bool isActive = _currentIndex == index;
                      return ImageIndexIndicator(isActive: isActive);
                    }).toList(),
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  GetStartedButton(
                    isWeb: isWeb,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OnboardingSlidesScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
