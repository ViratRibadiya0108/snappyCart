import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:snappycart/presenatation/home_screen/home_screen.dart';
import 'package:snappycart/presenatation/onbording_sceen/onbording_sceen.dart';

class Wrepper extends StatefulWidget {
  const Wrepper({super.key});

  @override
  State<Wrepper> createState() => _WrepperState();
}

class _WrepperState extends State<Wrepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              return const HomeScreen();
            } else {
              return const OnboardingScreen();
            }
          }),
    );
  }
}
