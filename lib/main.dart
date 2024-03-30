import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokeapi_flutter/Routes/app_pages.dart';
import 'package:pokeapi_flutter/utils/views_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'PokeAPI Flutter GetX',
        debugShowCheckedModeBanner: false,
        getPages: AppPages.pages,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const SplashView());
  }
}
