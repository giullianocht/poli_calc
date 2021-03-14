import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:poli_calc/app/modules/home/controllers/home_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PoliCalc'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.bug_report,
              ),
              onPressed: () {
                Get.defaultDialog(
                  title: "¡Hola!",
                  content: Column(
                    children: [
                      Text(
                          "Si encontraste algún error 🤧 o no entendes como funciona que esperas para escribirme 😃."),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.whatsapp,
                            ),
                            onPressed: () {
                              launch("https://wa.me/+595983342745");
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.mail,
                            ),
                            onPressed: () {
                              launch(
                                  "mailto:mateogiulliano@fpuna.edu.py?subject=PoliCalc&body=Hola Giulliano,");
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                );
              })
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: Text(
              "Con Parciales",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: controller.irConParciales,
          ),
          ElevatedButton(
            child: Text(
              "Con Promedio Ponderado",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: controller.irConPromedio,
          ),
          ElevatedButton(
            child: Text(
              "Armar Promedio Ponderado",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: controller.irArmar,
          )
        ],
      )),
    );
  }
}
