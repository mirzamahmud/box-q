import 'package:box_q/view/screens/auth/reset_password/controller/reset_password_controller.dart';
import 'package:get/get.dart';

class ResetPasswordBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPasswordController());
  }
}