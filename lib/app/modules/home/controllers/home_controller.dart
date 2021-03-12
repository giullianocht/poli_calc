import 'package:get/get.dart';
import 'package:poli_calc/app/routes/app_pages.dart';

class HomeController extends GetxController {
  void irConParciales() => Get.offNamed(Routes.CONPARCIALES);
  void irConPromedio() => Get.offNamed(Routes.PROMEDIO);
  void irArmar() => Get.offNamed(Routes.ARMAR);
}
