//import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromedioController extends GetxController {
  /*TextEditingController ppController = TextEditingController();

  RxBool error = RxBool();
  RxString errorDetallado = RxString("");

  RxInt dos = RxInt(0);
  RxInt tres = RxInt(0);
  RxInt cuatro = RxInt(0);
  RxInt cinco = RxInt(0);

  bool _validator(String text) {
    if (num.tryParse(text) != null &&
        num.tryParse(text) >= 0 &&
        num.tryParse(text) <= 100) {
      return true;
    } else {
      return false;
    }
  }

  void calcular() {
    if (_validator(ppController.text)) {
      error.value = false;
      errorDetallado.value = "";
      double promedio = double.tryParse(ppController.text);

      if (promedio < 50) {
        error.value = true;
        errorDetallado.value = "Error: Promedio menor a 50";
      }

      for (var i = 50; i <= 100; i++) {
        if (((promedio * 0.60) + (i * 0.40)).round() >= 60 && promedio >= 50) {
          dos.value = i;
          break;
        } else {
          dos.value = 0;
        }
      }
      for (var i = 50; i <= 100; i++) {
        if (((promedio * 0.60) + (i * 0.40)).round() >= 71 && promedio >= 50) {
          tres.value = i;
          break;
        } else {
          tres.value = 0;
        }
      }
      if (dos.value == tres.value) {
        dos.value = 0;
      }
      for (var i = 50; i <= 100; i++) {
        if (((promedio * 0.60) + (i * 0.40)).round() >= 81 && promedio >= 50) {
          cuatro.value = i;
          break;
        } else {
          cuatro.value = 0;
        }
      }
      for (var i = 50; i <= 100; i++) {
        if (((promedio * 0.60) + (i * 0.40)).round() >= 91 && promedio >= 50) {
          cinco.value = i;
          break;
        } else {
          cinco.value = 0;
        }
      }
    } else {
      error.value = true;
      errorDetallado.value = "Error: Dato no valido";
    }
  }*/
}
