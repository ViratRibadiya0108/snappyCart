import 'package:flutter/material.dart';
import 'package:snappycart/core/service/app_data/app_color.dart';
import 'package:snappycart/core/service/app_data/app_image.dart';
import 'package:snappycart/presenatation/home_screen/home_screen.dart';

class LoginAccountScreen extends StatefulWidget {
  const LoginAccountScreen({super.key});

  @override
  State<LoginAccountScreen> createState() => _LoginAccountScreenState();
}

class _LoginAccountScreenState extends State<LoginAccountScreen> {
    TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: false,
        child: LayoutBuilder(builder: (context, constraints) {
          bool isWeb = constraints.maxWidth > 600;

          return isWeb
              ? Stack(
                  children: [
                    Positioned.fill(
                      child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), // Adjust opacity here
                          BlendMode
                              .darken, // You can also experiment with other blend modes
                        ),
                        child: Image.network(
                          AppImage.loginScreenimage,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Center(
                        child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20), // Rounded corners
                      ),
                      elevation: 8, // Add shadow for better visual hierarchy
                      color: AppColors.black,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 40,
                            right: 40,
                            top: 20,
                            bottom: 20), // Padding inside the card
                        child: SizedBox(
                          height: screenHeight * 0.5,
                          width: screenWidth * 0.4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Title
                              Center(
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),

                              // Name Field
                              TextFormField(
                                controller: email,
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  labelStyle: TextStyle(
                                      color: AppColors.white), // Darker label
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors
                                            .ofWhite), // Grey underline
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            AppColors.white), // Blue on focus
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),

                              // Email Field
                              TextFormField(
                                controller: password,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(color: AppColors.white),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColors.ofWhite),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: AppColors.white),
                                  ),
                                ),
                              ),
 const SizedBox(height: 20),
                              // Submit Button
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomeScreen(),), (route)=>false);
                                    // Add your submit logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        AppColors.white, // Button color
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 50,
                                        vertical: 15), // Padding inside button
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          30), // Round button shape
                                    ),
                                  ),
                                  child: Text(
                                    'Log In',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenHeight * 0.03,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Don’t have an account? ',
                                        style:
                                            TextStyle(color: AppColors.white),
                                      ),
                                      InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(' Sign Up',
                                              style: TextStyle(color: AppColors.white,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  decorationColor:
                                                      AppColors.white))),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))
                  ],
                )
              : Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        color: Colors.white, // Set the background color here
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Log into \nyour account',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: email,
                             // Hide the text for password
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: TextStyle(color: AppColors.black),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.fullBlack),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.black),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFormField(
                            controller: password,
                            obscureText: true, // Hide the text for password
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(color: AppColors.black),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColors.fullBlack),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: AppColors.black),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Center(
                            child: ElevatedButton(
                              onPressed: () {
                               Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const HomeScreen(),), (route)=>false);
                                // Add your submit logic here
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    AppColors.fullBlack, // Button color
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50,
                                    vertical: 15), // Padding inside button
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30), // Round button shape
                                ),
                              ),
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: screenHeight * 0.05,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Don’t have an account?',
                                    style: TextStyle(color: AppColors.black),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text('Sign Up',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor:
                                                  AppColors.black))),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                );
        }),
      ),
    );
  }
}
