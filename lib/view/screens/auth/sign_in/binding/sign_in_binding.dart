import 'package:box_q/view/screens/auth/sign_in/controller/sign_in_controller.dart';
import 'package:get/get.dart';

class SignInBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }
}