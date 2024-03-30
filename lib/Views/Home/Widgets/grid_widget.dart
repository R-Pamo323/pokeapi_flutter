import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokeapi_flutter/utils/controllers_utils.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) => Positioned(
            top: 150,
            bottom: 0,
            width: width,
            child: Column(
              children: [
                _.pokedex.isNotEmpty
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
                                    margin: const EdgeInsets.only(top: 80),
                                    decoration: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25))),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            top: 90,
                                            left: 15,
                                            child: Text(
                                              _.pokedex[index]["num"],
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Color.fromARGB(
                                                      255, 128, 64, 48)),
                                            )),
                                        Positioned(
                                            top: 130,
                                            left: 15,
                                            child: Text(
                                              _.pokedex[index]["name"],
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Colors.white54),
                                            )),
                                        Positioned(
                                            top: 170,
                                            left: 15,
                                            child: Container(
                                              padding: const EdgeInsets.only(
                                                  left: 10,
                                                  right: 10,
                                                  top: 5,
                                                  bottom: 5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(20)),
                                                  color: Colors.black
                                                      .withOpacity(0.5)),
                                              child: Text(
                                                _.pokedex[index]["type"][0],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18,
                                                    color: _.setColor(index),
                                                    shadows: [
                                                      BoxShadow(
                                                          color:
                                                              _.setColor(index),
                                                          offset: Offset(0, 0),
                                                          spreadRadius: 1.0,
                                                          blurRadius: 15)
                                                    ]),
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topCenter,
                                    child: CachedNetworkImage(
                                      imageUrl: _.pokedex[index]["img"],
                                      height: 180,
                                      fit: BoxFit.fitHeight,
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
            )));
  }
}
