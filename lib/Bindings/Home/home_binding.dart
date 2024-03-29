import 'package:get/get.dart';
import 'package:pokeapi_flutter/Controllers/Home/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
