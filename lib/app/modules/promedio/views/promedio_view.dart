import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:poli_calc/app/modules/promedio/controllers/promedio_controller.dart';
import 'package:poli_calc/app/routes/app_pages.dart';

class PromedioView extends GetView<PromedioController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Con Promedio Ponderado"),
        //Esto se agrega debido que en la web se pierde la
        //referencia de la ruta anterior
        //si se ingresa directamente a ella con la url saltando
        //el home
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.offNamed(Routes.HOME),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: Get.mediaQuery.size.height * 0.35,
              ),
              Obx(
                () => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Promedio Ponderado",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    NumberPicker(
                      value: controller.promedioPonderado,
                      minValue: 0,
                      maxValue: 100,
                      onChanged: (value) =>
                          controller.setPromedioPonderado(value),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              modalResultados();
            },
            child: Text("Calcular"),
          )
        ],
      ),
    );
  }

  void modalResultados() {
    var notas = controller.calcularNotas();
    Get.defaultDialog(
      title: "Notas",
      content: Column(
        children: [
          notas[0] != -1
              ? Text(
                  "Puntaje para 2: ${notas[0]}",
                )
              : Container(),
          notas[1] != -1
              ? Text(
                  "Puntaje para 3: ${notas[1]}",
                )
              : Container(),
          notas[2] != -1
              ? Text(
                  "Puntaje para 4: ${notas[2]}",
                )
              : Container(),
          notas[3] != -1
              ? Text(
                  "Puntaje para 5: ${notas[3]}",
                )
              : Container(),
        ],
      ),
    );
  }
}
