import 'package:get/get.dart';
import 'package:poli_calc/app/routes/app_pages.dart';

class HomeController extends GetxController {
  void irConParciales() => Get.toNamed(Routes.PARCIALES);
  void irConPromedio() => Get.toNamed(Routes.PROMEDIO);
  void irArmar() => Get.toNamed(Routes.ARMAR);
}
