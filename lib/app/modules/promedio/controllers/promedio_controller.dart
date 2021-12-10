import 'package:get/get.dart';

import 'package:poli_calc/app/models/ExamenFinal.dart';
import 'package:poli_calc/app/models/PromedioPonderado.dart';

class PromedioController extends GetxController {
  var _promedioPonderado = PromedioPonderado.tengoUnPromedioPonderado(50);
  //El auxiliar se utiliza para manejar el NumberPicker
  var _auxPromedioPonderado = 50.obs;
  var examenFinal = ExamenFinal().obs;

  @override
  void onInit() {
    examenFinal.value.setPromedioPonderado = _promedioPonderado;
    examenFinal.value.setPuntajeExamenFinal = 0;

    examenFinal.value.setPorcentajePromedioPonderado = 60;
    examenFinal.value.setPorcetajePuntajeExamenFinal = 40;

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setPromedioPonderado(int valor) {
    _auxPromedioPonderado.value = valor;
  }

  int get promedioPonderado {
    return _auxPromedioPonderado.value;
  }

  int _auxCalcularNota(int notaFinal, int iniPuntaje) {
    if (iniPuntaje == -1) {
      iniPuntaje = 50;
    }
    for (var puntaje = iniPuntaje; puntaje <= 100; puntaje++) {
      examenFinal.value.setPuntajeExamenFinal = puntaje;
      if (examenFinal.value.nota() == notaFinal) {
        return puntaje;
      }
    }
    //Error
    return -1;
  }

  List<int> calcularNotas() {
    examenFinal.value.promedioPonderado.setPromedioPonderado =
        _auxPromedioPonderado.value;
    var puntajeParaDos = _auxCalcularNota(2, 50);
    var puntajeParaTres = _auxCalcularNota(3, puntajeParaDos);
    var puntajeParaCuatro = _auxCalcularNota(4, puntajeParaTres);
    var puntajeParaCinco = _auxCalcularNota(5, puntajeParaCuatro);
    return [
      puntajeParaDos,
      puntajeParaTres,
      puntajeParaCuatro,
      puntajeParaCinco
    ];
  }
}
