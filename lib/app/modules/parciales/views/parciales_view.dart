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
      body: Center(),
    );
  }
}
