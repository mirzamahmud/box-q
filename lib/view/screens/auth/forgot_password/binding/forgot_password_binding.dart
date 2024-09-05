import 'package:box_q/view/screens/auth/forgot_password/controller/forgot_password_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordController());
  }
}