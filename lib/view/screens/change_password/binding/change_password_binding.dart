import 'package:box_q/view/screens/change_password/controller/change_password_controller.dart';
import 'package:get/get.dart';

class ChangePasswordBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordController());
  }
}