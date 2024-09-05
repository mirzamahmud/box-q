import 'package:box_q/view/screens/auth/sign_up/controller/sign_up_controller.dart';
import 'package:get/get.dart';

class SignUpBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}