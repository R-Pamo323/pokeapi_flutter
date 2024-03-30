import 'package:get/get.dart';
import 'package:pokeapi_flutter/utils/controllers_utils.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
