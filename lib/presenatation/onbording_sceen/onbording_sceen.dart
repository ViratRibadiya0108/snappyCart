import 'package:flutter/material.dart';

import 'package:snappycart/core/service/app_strings.dart';
import 'package:snappycart/presenatation/onbording_sceen/getstart.dart';
import 'package:snappycart/presenatation/onbording_sceen/onboarding_slides_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Check the width of the screen
          bool isWeb =
              constraints.maxWidth > 600; // Adjust the threshold as needed

          return Stack(
            children: [
              Positioned.fill(
                child: Image.network(
                  isWeb
                      ? 'https://images.unsplash.com/photo-1441984904996-e0b6ba687e04?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
                      : 'https://images.unsplash.com/photo-1654944989824-258e5185885e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fG1vZGVsJTIwZ2lybHxlbnwwfDF8MHx8fDA%3D',
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Padding(
                  padding:const EdgeInsets.only(top: 500),
                  child: Column(
                    children: [
                      Text(
                        AppStrings.welcome,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.black.withOpacity(0.9),
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        AppStrings.stitle,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.black.withOpacity(0.5),
                              offset: const Offset(2, 2),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
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
                      // InkWell(onTap: (){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingSlidesScreen(),));
                      // },
                      //   child: isWeb
                      //       ? Container(
                      //           height: screenHeight * 0.05,
                      //           width: screenWidth * 0.12,
                      //           decoration: BoxDecoration(
                      //             color: AppColors.fullBlack,
                      //             border: Border.all(color: AppColors.white),
                      //             borderRadius:
                      //                 const BorderRadius.all(Radius.circular(30)),
                      //           ),
                      //           child:  Center(
                      //                      child: Text("Get Started",style: TextStyle(color: AppColors.white,fontSize: 18),)
                      //                   ),)
                      //       : Container(
                      //           height: screenHeight * 0.07,
                      //           width: screenWidth * 0.4,
                      //           decoration: BoxDecoration(
                      //               color: AppColors.fullBlack,
                      //               border: Border.all(
                      //                 color: AppColors.white,
                      //               ),
                      //               borderRadius: const BorderRadius.all(
                      //                   Radius.circular(30))),
                      //                   child:  Center(
                      //                      child: Text("Get Started",style: TextStyle(color: AppColors.white,fontSize: 18),)
                      //                   ),),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
