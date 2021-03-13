import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poli_calc/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Poli Calculadora'),
        centerTitle: true,
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
