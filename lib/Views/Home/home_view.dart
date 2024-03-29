import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokeapi_flutter/Controllers/Home/home_controller.dart';

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
              child: Stack(
                children: [
                  Positioned(
                      top: -50,
                      right: -50,
                      child: Image.asset(
                        "assets/pokeball.png",
                        width: 170,
                        fit: BoxFit.fitWidth,
                      )),
                  Positioned(
                    top: 100,
                    left: 20,
                    child: Text(
                      "Pokedex",
                      style: TextStyle(
                          color: Colors.black12.withOpacity(0.6),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  Positioned(
                      top: 150,
                      bottom: 0,
                      width: width,
                      child: Column(
                        children: [
                          _.pokedex.length != 0
                              ? Expanded(
                                  child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio:
                                        3 / 5, //*El ancho es 3 y el alto es 5
                                  ),
                                  itemCount: _.pokedex.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 10),
                                      child: InkWell(
                                        //* Para que podamos hacer tap en una area
                                        child: SafeArea(
                                            //* Para que no afecte con los botones del android
                                            child: Stack(
                                          children: [
                                            Container(
                                              width: width,
                                              margin: const EdgeInsets.only(
                                                  top: 80),
                                              decoration: BoxDecoration(
                                                  color: Colors.black26,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(25))),
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                      top: 90,
                                                      left: 15,
                                                      child: Text(
                                                        _.pokedex[index]["num"],
                                                        style: const TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18,
                                                            color:
                                                                Colors.black87),
                                                      )),
                                                  Positioned(
                                                      top: 130,
                                                      left: 15,
                                                      child: Text(
                                                        _.pokedex[index]
                                                            ["name"],
                                                        style: const TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18,
                                                            color:
                                                                Colors.white54),
                                                      )),
                                                  Positioned(
                                                      top: 170,
                                                      left: 15,
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 10,
                                                                right: 10,
                                                                top: 5,
                                                                bottom: 5),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                const BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            20)),
                                                            color: Colors.black
                                                                .withOpacity(
                                                                    0.5)),
                                                        child: Text(
                                                          _.pokedex[index]
                                                              ["type"][0],
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18,
                                                              color: _.setColor(
                                                                  index),
                                                              shadows: [
                                                                BoxShadow(
                                                                    color: _
                                                                        .setColor(
                                                                            index),
                                                                    offset:
                                                                        Offset(
                                                                            0,
                                                                            0),
                                                                    spreadRadius:
                                                                        1.0,
                                                                    blurRadius:
                                                                        15)
                                                              ]),
                                                        ),
                                                      ))
                                                ],
                                              ),
                                            )
                                          ],
                                        )),
                                      ),
                                    );
                                  },
                                ))
                              : const Center(
                                  child: CircularProgressIndicator(),
                                )
                        ],
                      ))
                ],
              ),
            )));
  }
}
