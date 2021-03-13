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
            onPressed: () {},
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
}
