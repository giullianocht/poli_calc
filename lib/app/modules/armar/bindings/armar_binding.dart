import 'package:get/get.dart';

import 'package:poli_calc/app/modules/armar/controllers/armar_controller.dart';

class ArmarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArmarController>(
      () => ArmarController(),
    );
  }
}
