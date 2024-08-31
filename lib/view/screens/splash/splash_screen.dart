import 'dart:async';

import 'package:box_q/view/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> iconAnimation;
  late Animation<Offset> textAnimation;

  @override
  void initState() {

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
      animationBehavior: AnimationBehavior.normal
    );

    iconAnimation = Tween(
      begin: const Offset(-1, 0),
      end: const Offset(0, 0)
    ).animate(CurvedAnimation(parent: animationController, curve: Curves.slowMiddle));

    textAnimation = Tween(
        begin: const Offset(1, 0),
        end: const Offset(0, 0)
    ).animate(CurvedAnimation(parent: animationController, curve: Curves.slowMiddle));

    setState(() {
      animationController.forward();
    });

    Timer(
      const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
    });

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: iconAnimation,
                child: Image.asset(
                  "assets/images/app_logo.png",
                  height: 96, width: 96
                ),
              ),
              const SizedBox(height: 8),
              SlideTransition(
                position: textAnimation,
                child: Text(
                  "BoxQ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
