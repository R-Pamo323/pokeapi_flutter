import 'package:get/get.dart';
import 'package:pokeapi_flutter/Controllers/Splash/splash_controller.dart';

class SplashBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
