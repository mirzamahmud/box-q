import 'package:box_q/routes/app_pages.dart';
import 'package:box_q/view/screens/authentications/confirm_password/confirm_password_screen.dart';
import 'package:box_q/view/screens/authentications/forgot_password/forgot_password_screen.dart';
import 'package:box_q/view/screens/authentications/otp/otp_screen.dart';
import 'package:box_q/view/screens/authentications/reset_password/reset_password_screen.dart';
import 'package:box_q/view/screens/authentications/sign_in/sign_in_screen.dart';
import 'package:box_q/view/screens/authentications/sign_up/sign_up_screen.dart';
import 'package:box_q/view/screens/home/home_screen.dart';
import 'package:box_q/view/screens/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoutes{

  static final GoRouter routers = GoRouter(
    initialLocation: AppPages.splashScreen,
    routes: [
      GoRoute(path: AppPages.splashScreen, builder: (context, state) => const SplashScreen()),
      GoRoute(path: AppPages.splashScreen, builder: (context, state) => const SignInScreen()),
      GoRoute(path: AppPages.splashScreen, builder: (context, state) => const SignUpScreen()),
      GoRoute(path: AppPages.splashScreen, builder: (context, state) => const ForgotPasswordScreen()),
      GoRoute(path: AppPages.splashScreen, builder: (context, state) => const OtpScreen()),
      GoRoute(path: AppPages.splashScreen, builder: (context, state) => const ResetPasswordScreen()),
      GoRoute(path: AppPages.splashScreen, builder: (context, state) => const ConfirmPasswordScreen()),
      GoRoute(path: AppPages.homeScreen, builder: (context, state) => const HomeScreen()),
    ]
  );
}