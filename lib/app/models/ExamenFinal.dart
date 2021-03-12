import 'package:poli_calc/app/Util/Util.dart';
import 'package:poli_calc/app/models/PromedioPonderado.dart';

class ExamenFinal {
  static const int escalaDos = 60;
  static const int escalaTres = 71;
  static const int escalaCuatro = 81;
  static const int escalaCinco = 91;

  late PromedioPonderado promedioPonderado;
  late int puntajeExamenFinal;
  late double porcentajePromedioPonderado;
  late double porcentajePuntajeExamenFinal;

  set setPromedioPonderado(PromedioPonderado promedioPonderado) {
    this.promedioPonderado = promedioPonderado;
  }

  set setPuntajeExamenFinal(int puntajeExamenFinal) {
    this.puntajeExamenFinal = puntajeExamenFinal;
  }

  set setPorcentajePromedioPonderado(int porcentaje) {
    this.porcentajePromedioPonderado = (porcentaje / 100);
  }

  set setPorcetajePuntajeExamenFinal(int porcentaje) {
    this.porcentajePuntajeExamenFinal = (porcentaje / 100);
  }

  bool _verificarSumaPorcentajes() {
    var suma = (porcentajePromedioPonderado * 100) +
        (porcentajePuntajeExamenFinal * 100);
    if (suma == 100) {
      return true;
    } else {
      return false;
    }
  }

  int _getPuntuacionFinal() {
    if (_verificarSumaPorcentajes()) {
      if (promedioPonderado.calcular() >= 50) {
        var puntuacionFinal =
            ((porcentajePuntajeExamenFinal * puntajeExamenFinal) +
                (porcentajePromedioPonderado * promedioPonderado.calcular()));

        var puntuacionFinalRedondeado = Util.redondeo(puntuacionFinal);

        return puntuacionFinalRedondeado;
      } else {
        print("ERROR EF: PROMEDIO PONDERADO MENOR A 50");
        return -1;
      }
    } else {
      print("ERROR EF: LA SUMA DE LOS PORCENTAJES ES DISTINTO A 100");
      return -1;
    }
  }

  int nota() {
    var puntuacionFinal = _getPuntuacionFinal();
    if (puntuacionFinal > 0) {
      if (puntuacionFinal >= escalaCinco) {
        return 5;
      } else if (puntuacionFinal >= escalaCuatro) {
        return 4;
      } else if (puntuacionFinal >= escalaTres) {
        return 3;
      } else if (puntuacionFinal >= escalaDos) {
        return 2;
      } else {
        return 1;
      }
    } else {
      print("ERROR EF: ERROR AL CALCULAR LA NOTA");
      return -1;
    }
  }
}
