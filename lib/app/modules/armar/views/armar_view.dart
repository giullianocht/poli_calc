import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:numberpicker/numberpicker.dart';

import 'package:poli_calc/app/modules/armar/controllers/armar_controller.dart';
import 'package:poli_calc/app/routes/app_pages.dart';

class ArmarView extends GetView<ArmarController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Armar Ponderado'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.offNamed(Routes.HOME),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.replay,
              ),
              onPressed: controller.reset,
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Parciales",
              ),
              Tab(
                text: "Lab",
              ),
              Tab(
                text: "Taller",
              ),
              Tab(
                text: "TP",
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          parciales(),
          laboratorio(),
          taller(),
          trabajoPractico()
        ]),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(
            bottom: (Get.mediaQuery.size.height * 0.15),
          ),
          child: ElevatedButton(
            onPressed: () {
              mostrarResultado();
            },
            child: Text("Calcular"),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  Widget parciales() {
    return Column(
      children: [
        SizedBox(
          height: Get.mediaQuery.size.height * 0.1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(
              () => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Primer Parcial",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  NumberPicker(
                    value: controller.primerParcial,
                    minValue: 0,
                    maxValue: 100,
                    onChanged: (value) => controller.setPrimerParcial(value),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black26),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: Get.mediaQuery.size.height * 0.070,
            ),
            Obx(
              () => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Segundo Parcial",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  NumberPicker(
                    value: controller.segundoParcial,
                    minValue: 0,
                    maxValue: 100,
                    onChanged: (value) => controller.setSegundoParcial(value),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black26),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Porcentaje Asignado",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              NumberPicker(
                value: controller.porcentajeParcial,
                minValue: 0,
                maxValue: 100,
                axis: Axis.horizontal,
                onChanged: (value) => controller.setParcialPorcentaje(value),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black26),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget laboratorio() {
    return Column(
      children: [
        SizedBox(
          height: Get.mediaQuery.size.height * 0.1,
        ),
        Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Puntaje Laboratorio",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              NumberPicker(
                value: controller.laboratorio,
                minValue: 0,
                maxValue: 100,
                onChanged: (value) => controller.setLaboratorio(value),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black26),
                ),
              ),
            ],
          ),
        ),
        Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Porcentaje Asignado",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              NumberPicker(
                value: controller.porcentajeLaboratorio,
                minValue: 0,
                maxValue: 100,
                axis: Axis.horizontal,
                onChanged: (value) =>
                    controller.setLaboratorioPorcentaje(value),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black26),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget taller() {
    return Column(
      children: [
        SizedBox(
          height: Get.mediaQuery.size.height * 0.1,
        ),
        Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Puntaje Taller",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              NumberPicker(
                value: controller.taller,
                minValue: 0,
                maxValue: 100,
                onChanged: (value) => controller.setTaller(value),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black26),
                ),
              ),
            ],
          ),
        ),
        Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Porcentaje Asignado",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              NumberPicker(
                value: controller.porcentajeTaller,
                minValue: 0,
                maxValue: 100,
                axis: Axis.horizontal,
                onChanged: (value) => controller.setPorcentajeTaller(value),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black26),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget trabajoPractico() {
    return Column(
      children: [
        SizedBox(
          height: Get.mediaQuery.size.height * 0.1,
        ),
        Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Puntaje TP",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              NumberPicker(
                value: controller.trabajoPractico,
                minValue: 0,
                maxValue: 100,
                onChanged: (value) => controller.setTrabajoPractico(value),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black26),
                ),
              ),
            ],
          ),
        ),
        Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Porcentaje Asignado",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              NumberPicker(
                value: controller.porcentajeTrabajoPractico,
                minValue: 0,
                maxValue: 100,
                axis: Axis.horizontal,
                onChanged: (value) =>
                    controller.setPorcentajeTrabajoPractico(value),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black26),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void mostrarResultado() {
    if (controller.error() == -1) {
      dialogoDeError("El porcentaje del Promedio Ponderado no es igual a 100");
    } else if (controller.error() == -2) {
      dialogoDeError("Promedio Ponderado es menor a 50");
    } else if (controller.error() == -3) {
      dialogoDeError(
          "El porcentaje del Calculo Examen Final no es igual a 100");
    } else {
      var notas = controller.calcularNotas();
      Get.defaultDialog(
        title: "Notas",
        content: Column(
          children: [
            notas[0] != -1 && notas[0] >= 50
                ? Text(
                    "Puntaje para 2: ${notas[0]}",
                  )
                : Container(),
            notas[1] != -1 && notas[1] >= 50
                ? Text(
                    "Puntaje para 3: ${notas[1]}",
                  )
                : Container(),
            notas[2] != -1 && notas[2] >= 50
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

  void dialogoDeError(String error) {
    Get.defaultDialog(
      title: "Error",
      titleStyle: TextStyle(
        color: Colors.red,
      ),
      content: Text(
        error,
        style: TextStyle(
          color: Colors.red,
        ),
      ),
    );
  }
}
