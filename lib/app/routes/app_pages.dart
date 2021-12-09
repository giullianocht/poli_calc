import 'package:get/get.dart';

import 'package:poli_calc/app/modules/armar/bindings/armar_binding.dart';
import 'package:poli_calc/app/modules/armar/views/armar_view.dart';
import 'package:poli_calc/app/modules/conparciales/bindings/parciales_binding.dart';
import 'package:poli_calc/app/modules/conparciales/views/parciales_view.dart';
import 'package:poli_calc/app/modules/home/bindings/home_binding.dart';
import 'package:poli_calc/app/modules/home/views/home_view.dart';
import 'package:poli_calc/app/modules/promedio/bindings/promedio_binding.dart';
import 'package:poli_calc/app/modules/promedio/views/promedio_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.CONPARCIALES,
      page: () => ConParcialesView(),
      binding: ConParcialesBinding(),
    ),
    GetPage(
      name: Routes.ARMAR,
      page: () => ArmarView(),
      binding: ArmarBinding(),
    ),
    GetPage(
      name: Routes.PROMEDIO,
      page: () => PromedioView(),
      binding: PromedioBinding(),
    ),
  ];
}
