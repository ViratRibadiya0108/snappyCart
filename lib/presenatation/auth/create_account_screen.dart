import 'package:flutter/material.dart';
import 'package:snappycart/core/service/app_color.dart';
import 'package:snappycart/core/service/app_image.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final screenHeight = MediaQuery.of(context).size.height;

    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        bool isWeb = constraints.maxWidth > 600;
        return Stack(
          children: [
            Positioned.fill(
              child: ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), // Adjust opacity here
                BlendMode.darken, // You can also experiment with other blend modes
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
            borderRadius: BorderRadius.circular(20), // Rounded corners
          ),
          elevation: 8, // Add shadow for better visual hierarchy
          color: AppColors.black,
          child: Padding(
            padding: const EdgeInsets.only(left: 40,right: 40,top: 20,bottom: 20), // Padding inside the card
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Title
                 Center(
                  child: Text(
                    "Register",
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
                  decoration: InputDecoration(
                    labelText: 'Enter Name',
                    labelStyle: TextStyle(color: AppColors.white), // Darker label
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.ofWhite), // Grey underline
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.white), // Blue on focus
                    ),
                  ),
                ),
                const SizedBox(height: 20),
          
                // Email Field
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: AppColors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.ofWhite),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
          
                // Password Field
                TextFormField(
                  obscureText: true, // Hide the text for password
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: AppColors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.ofWhite),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:AppColors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
          
                // Confirm Password Field
                TextFormField(
                  obscureText: true, // Hide the text for password
                  decoration:  InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: AppColors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.ofWhite),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
          
                // Submit Button
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your submit logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.white, // Button color
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15), // Padding inside button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), // Round button shape
                      ),
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.black,
                      ),
                    ),
                    
                  ),
                  
                ),
                        // Social Media Icons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                // Add your Apple login logic here
                              },
                              icon: Image.network(
                                AppImage.google,
                                width: 30,
                                height: 30,
                              ),
                            ),
                            const SizedBox(width: 20),
                            IconButton(
                              onPressed: () {
                                // Add your Google login logic here
                              },
                              icon: Image.network(
                               AppImage.apple,
                                width: 30,
                                height: 30,
                              ),
                            ),
                            const SizedBox(width: 20),
                            IconButton(
                              onPressed: () {
                                // Add your Facebook login logic here
                              },
                              icon: Image.network(
                                AppImage.facebook,
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ],
                        ),
              ],
            ),
          ),
        ),
            )
          ],
        );
      }),
    );
  }
}
