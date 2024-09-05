import 'package:box_q/view/screens/auth/otp/controller/otp_controller.dart';
import 'package:get/get.dart';

class OtpBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut(() => OtpController());
  }
}