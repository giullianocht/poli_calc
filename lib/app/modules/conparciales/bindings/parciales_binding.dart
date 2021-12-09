import 'package:get/get.dart';

import 'package:poli_calc/app/modules/conparciales/controllers/parciales_controller.dart';

class ConParcialesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ConParcialesController>(
      () => ConParcialesController(),
    );
  }
}
