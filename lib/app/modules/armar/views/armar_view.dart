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
        body: Center());
  }
}
