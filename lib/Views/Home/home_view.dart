import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokeapi_flutter/Constants/app_colors.dart';
import 'package:pokeapi_flutter/utils/controllers_utils.dart';
import 'package:pokeapi_flutter/utils/widgets_utils.dart';

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
                  MyColors.gradientBackground1,
                  MyColors.gradientBackground2
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
