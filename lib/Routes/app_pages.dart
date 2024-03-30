import 'package:get/get.dart';
import 'package:pokeapi_flutter/Bindings/Home/home_binding.dart';
import 'package:pokeapi_flutter/Bindings/Splash/splash_binding.dart';
import 'package:pokeapi_flutter/Routes/app_routes.dart';
import 'package:pokeapi_flutter/Views/Home/home_view.dart';
import 'package:pokeapi_flutter/Views/Splash/splash_view.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.HOME,
        page: () => const HomeView(),
        binding: HomeBindings()),
    GetPage(
        name: AppRoutes.SPLASH,
        page: () => const SplashView(),
        binding: SplashBindings()),
  ];
}
