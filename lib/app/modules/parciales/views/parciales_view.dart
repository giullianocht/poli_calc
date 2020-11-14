import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poli_calc/app/modules/parciales/controllers/parciales_controller.dart';

class ParcialesView extends GetView<ParcialesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Con Parciales'),
        centerTitle: true,
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20.0),
              height: 125.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Primer Parcial", style: TextStyle(fontSize: 20.0)),
                  Container(
                    width: 75.0,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: controller.primerParcialController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "0 - 100",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0),
              height: 125.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Segundo Parcial", style: TextStyle(fontSize: 20.0)),
                  Container(
                    width: 75.0,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: controller.segundoParcialController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "0 - 100",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            RaisedButton(
              child: Text(
                "Calcular",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blueAccent,
              onPressed: controller.calcular,
            ),
            SizedBox(
              height: 25.0,
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
                                  controller.promedioPonderado.value.toString(),
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
            }),
          ],
        ),
      )),
    );
  }
}
