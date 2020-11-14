import 'package:get/get.dart';

import 'package:poli_calc/app/modules/parciales/controllers/parciales_controller.dart';

class ParcialesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ParcialesController>(
      () => ParcialesController(),
    );
  }
}
