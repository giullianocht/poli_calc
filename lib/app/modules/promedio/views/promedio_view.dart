import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poli_calc/app/modules/promedio/controllers/promedio_controller.dart';

class PromedioView extends GetView<PromedioController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Con Promedio Ponderado'),
          centerTitle: true,
        ),
        body: Center());
  }
}
