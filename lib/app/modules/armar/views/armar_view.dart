import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poli_calc/app/modules/armar/controllers/armar_controller.dart';

class ArmarView extends GetView<ArmarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Armar Ponderado'),
        centerTitle: true,
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("Primer Parcial"),
                    Container(
                      width: 70.0,
                      height: 50.0,
                      child: TextFormField(
                        controller: controller.primerParcialController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "0 - 100",
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("Segundo Parcial"),
                    Container(
                      width: 70.0,
                      height: 50.0,
                      child: TextFormField(
                        controller: controller.segundoParcialController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "0 - 100",
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("% Asignado"),
                    Container(
                      width: 70.0,
                      height: 50.0,
                      child: TextFormField(
                        controller: controller.porcentajeParcialController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "0 - 100",
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("TP"),
                    Container(
                      width: 70.0,
                      height: 50.0,
                      child: TextFormField(
                        controller: controller.tpController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "0 - 100",
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("% Asignado"),
                    Container(
                      width: 70.0,
                      height: 50.0,
                      child: TextFormField(
                        controller: controller.porcentajeTpController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "0 - 100",
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("LAB"),
                    Container(
                      width: 70.0,
                      height: 50.0,
                      child: TextFormField(
                        controller: controller.labController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "0 - 100",
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("% Asignado"),
                    Container(
                      width: 70.0,
                      height: 50.0,
                      child: TextFormField(
                        controller: controller.porcentajeLabController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "0 - 100",
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("TALLER"),
                    Container(
                      width: 70.0,
                      height: 50.0,
                      child: TextFormField(
                        controller: controller.tallerController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "0 - 100",
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text("% Asignado"),
                    Container(
                      width: 70.0,
                      height: 50.0,
                      child: TextFormField(
                        controller: controller.porcentajeTallerController,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "0 - 100",
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              child: Text(
                "Calcular",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: controller.calcular,
            ),
            SizedBox(
              height: 20.0,
            ),
            Obx(() {
              if (controller.error.value.isNull) {
                return (Text(""));
              } else if (controller.error.value) {
                return Text(
                  controller.errorDetallado.value,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                );
              } else {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      controller.promedioPonderado.value != 0
                          ? Text(
                              "Promedio Ponderado: " +
                                  controller.promedioPonderado.value
                                      .toStringAsFixed(0),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            )
                          : Text(""),
                      SizedBox(
                        height: 10.0,
                      ),
                      controller.dos.value != 0
                          ? Text(
                              "Puntaje para 2: " +
                                  controller.dos.value.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ),
                            )
                          : Text(""),
                      controller.tres.value != 0
                          ? Text(
                              "Puntaje para 3: " +
                                  controller.tres.value.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ))
                          : Text(""),
                      controller.cuatro.value != 0
                          ? Text(
                              "Puntaje para 4: " +
                                  controller.cuatro.value.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ))
                          : Text(""),
                      controller.cinco.value != 0
                          ? Text(
                              "Puntaje para 5: " +
                                  controller.cinco.value.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.0,
                              ))
                          : Text(""),
                    ],
                  ),
                );
              }
            })
          ],
        ),
      )),
    );
  }
}
