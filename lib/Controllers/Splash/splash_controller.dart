import 'package:get/get.dart';
import 'package:pokeapi_flutter/Routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 1), () {
      Get.offNamed(AppRoutes.HOME);
    });
    super.onReady();
  }
}
