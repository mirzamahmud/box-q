import 'package:box_q/route/app_pages.dart';
import 'package:box_q/view/screens/auth/forgot_password/binding/forgot_password_binding.dart';
import 'package:box_q/view/screens/auth/forgot_password/forgot_password_screen.dart';
import 'package:box_q/view/screens/auth/otp/binding/otp_binding.dart';
import 'package:box_q/view/screens/auth/otp/otp_screen.dart';
import 'package:box_q/view/screens/auth/reset_password/binding/reset_password_binding.dart';
import 'package:box_q/view/screens/auth/reset_password/reset_password_screen.dart';
import 'package:box_q/view/screens/auth/sign_in/binding/sign_in_binding.dart';
import 'package:box_q/view/screens/auth/sign_in/sign_in_screen.dart';
import 'package:box_q/view/screens/auth/sign_up/binding/sign_up_binding.dart';
import 'package:box_q/view/screens/auth/sign_up/sign_up_screen.dart';
import 'package:box_q/view/screens/change_password/binding/change_password_binding.dart';
import 'package:box_q/view/screens/change_password/change_password_screen.dart';
import 'package:box_q/view/screens/splash/binding/splash_binding.dart';
import 'package:box_q/view/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes{
  static List<GetPage> routes = [
    // ------------- splash screen route -------------
    GetPage(name: AppPages.splashScreen, page: () => const SplashScreen(), binding: SplashBinding()),

    // -------------- auth screens route -------------
    GetPage(name: AppPages.signInScreen, page: () => const SignInScreen(), binding: SignInBinding()),
    GetPage(name: AppPages.signUpScreen, page: () => const SignUpScreen(), binding: SignUpBinding()),
    GetPage(name: AppPages.forgotPasswordScreen, page: () => const ForgotPasswordScreen(), binding: ForgotPasswordBinding()),
    GetPage(name: AppPages.otpScreen, page: () => const OtpScreen(), binding: OtpBinding()),
    GetPage(name: AppPages.resetPasswordScreen, page: () => const ResetPasswordScreen(), binding: ResetPasswordBinding()),

    // -------------- change password screen route --------------
    GetPage(name: AppPages.changePasswordScreen, page: () => const ChangePasswordScreen(), binding: ChangePasswordBinding())
  ];
}