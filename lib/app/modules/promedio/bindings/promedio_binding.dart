import 'package:get/get.dart';

import 'package:poli_calc/app/modules/promedio/controllers/promedio_controller.dart';

class PromedioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PromedioController>(
      () => PromedioController(),
    );
  }
}
