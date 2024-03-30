import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokeapi_flutter/Controllers/Home/home_controller.dart';
import 'package:pokeapi_flutter/Views/Home/Widgets/background_image_widget.dart';
import 'package:pokeapi_flutter/Views/Home/Widgets/grid_widget.dart';
import 'package:pokeapi_flutter/Views/Home/Widgets/title_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) => Scaffold(
                body: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 128, 64, 48),
                  Color.fromARGB(255, 0, 0, 0)
                ], begin: Alignment.topRight, end: Alignment.bottomLeft),
              ),
              child: const Stack(
                children: [
                  BackgroundImageWidget(),
                  TitleWidget(),
                  GridWidget()
                ],
              ),
            )));
  }
}
