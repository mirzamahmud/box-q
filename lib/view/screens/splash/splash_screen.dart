import 'dart:async';

import 'package:box_q/blocs/splash/splash_bloc.dart';
import 'package:box_q/blocs/splash/splash_event.dart';
import 'package:box_q/blocs/splash/splash_state.dart';
import 'package:box_q/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
    super.initState();

    // initialize animation controller
    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));

    iconAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    textAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    // Start the animation by triggering the Bloc event
    context.read<SplashBloc>().add(StartSplashAnimationEvent());
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state){
        if(state is SplashLoadingState){
          // start animation
          animationController.forward();
        } else if(state is SplashSuccessState){
          Timer(
            const Duration(seconds: 4), () => context.go(AppPages.signInScreen)
          );
        }
      },
      child: SafeArea(
        top: false,
        child: Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideTransition(
                  position: iconAnimation,
                  child: Image.asset(
                    'assets/images/app_logo.png', // Replace with your logo asset
                    width: 150,
                    height: 150,
                  ),
                ),
                const SizedBox(height: 8),
                SlideTransition(
                  position: textAnimation,
                  child: const Text(
                    'Your App Name',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
