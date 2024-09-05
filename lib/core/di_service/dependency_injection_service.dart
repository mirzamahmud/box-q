import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class DependencyInjectionService{

  static Future<void> initDependency() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();

    Get.lazyPut(() => prefs);
  }
}