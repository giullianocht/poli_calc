import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArmarController extends GetxController {
  TextEditingController primerParcialController = TextEditingController();
  TextEditingController segundoParcialController = TextEditingController();
  TextEditingController porcentajeParcialController = TextEditingController();
  TextEditingController tpController = TextEditingController();
  TextEditingController porcentajeTpController = TextEditingController();
  TextEditingController labController = TextEditingController();
  TextEditingController porcentajeLabController = TextEditingController();
  TextEditingController tallerController = TextEditingController();
  TextEditingController porcentajeTallerController = TextEditingController();

  RxBool error = RxBool();
  RxString errorDetallado = RxString("");

  RxInt dos = RxInt(0);
  RxInt tres = RxInt(0);
  RxInt cuatro = RxInt(0);
  RxInt cinco = RxInt(0);

  RxDouble promedioPonderado = RxDouble(0.0);

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
    if (_validator(primerParcialController.text) &&
        _validator(segundoParcialController.text) &&
        _validator(porcentajeParcialController.text) &&
        _validator(tpController.text) &&
        _validator(porcentajeTpController.text) &&
        _validator(labController.text) &&
        _validator(porcentajeLabController.text) &&
        _validator(tallerController.text) &&
        _validator(porcentajeTallerController.text)) {
      error.value = false;
      errorDetallado.value = "";
      int promedioParciales = ((double.tryParse(primerParcialController.text) +
                  double.tryParse(segundoParcialController.text)) /
              2)
          .round();
      if (promedioParciales < 50) {
        error.value = true;
        errorDetallado.value = "Error: Promedio de parciales menor a 50";
      }
      double porcentajeParciales =
          int.tryParse(porcentajeParcialController.text) / 100;

      int tp = int.tryParse(tpController.text);
      double porcentajeTp = int.tryParse(porcentajeTpController.text) / 100;

      int lab = int.tryParse(labController.text);
      double porcentajeLab = int.tryParse(porcentajeLabController.text) / 100;

      int taller = int.tryParse(tallerController.text);
      double porcentajeTaller =
          int.tryParse(porcentajeTallerController.text) / 100;

      if (porcentajeParciales +
              porcentajeTp +
              porcentajeLab +
              porcentajeTaller !=
          1) {
        error.value = true;
        errorDetallado.value = "Error: Los porcentajes no suman 100";
      }

      double parcialesCalculado = promedioParciales * porcentajeParciales;
      double tpCalculado = tp * porcentajeTp;
      double labCalculado = lab * porcentajeLab;
      double tallerCalculado = taller * porcentajeTaller;

      double promedio =
          (parcialesCalculado + tpCalculado + labCalculado + tallerCalculado);
      promedioPonderado.value = promedio;

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
      errorDetallado.value = "Error: Datos ingresados no validos";
    }
  }
}
