import 'package:poli_calc/app/util/Util.dart';
import 'package:poli_calc/app/models/Parcial.dart';

class PromedioPonderado {
  late Parcial parcial;
  late int laboratorio;
  late int taller;
  late int trabajoPractico;
  bool _auxTengo = false;
  int _promedioPonderado = 0;
  late double porcentajeParcial;
  late double porcentajeLaboratorio;
  late double porcentajeTaller;
  late double porcentajeTrabajoPractico;

  PromedioPonderado({
    required this.laboratorio,
    required this.taller,
    required this.trabajoPractico,
  }) : assert(
          laboratorio >= 0 &&
              laboratorio <= 100 &&
              taller >= 0 &&
              taller <= 100 &&
              trabajoPractico >= 0 &&
              trabajoPractico <= 100,
        );

  PromedioPonderado.tengoUnPromedioPonderado(int valor) {
    this._auxTengo = true;
    this._promedioPonderado = valor;
  }
  set setPromedioPonderado(int valor) {
    this._auxTengo = true;
    this._promedioPonderado = valor;
  }

  set setParcial(Parcial parcial) {
    this.parcial = parcial;
  }

  set setPorcentajeParcial(int porcetaje) {
    this.porcentajeParcial = (porcetaje / 100);
  }

  set setPorcentajeLaboratorio(int porcetaje) {
    this.porcentajeLaboratorio = (porcetaje / 100);
  }

  set setPorcentajeTaller(int porcetaje) {
    this.porcentajeTaller = (porcetaje / 100);
  }

  set setPorcentajeTrabajoPractico(int porcetaje) {
    this.porcentajeTrabajoPractico = (porcetaje / 100);
  }

  //La suma de los porcentajes debe ser igual a 1
  //(1 representa 100%)
  bool _verificarSumaPorcentajes() {
    var suma = (porcentajeParcial * 100) +
        (porcentajeLaboratorio * 100) +
        (porcentajeTaller * 100) +
        (porcentajeTrabajoPractico * 100);
    if (suma == 100) {
      return true;
    } else {
      return false;
    }
  }

  //Se calcula el Promedio Ponderado
  int calcular() {
    if (_auxTengo) {
      return this._promedioPonderado;
    } else {
      if (_verificarSumaPorcentajes()) {
        var puntajeParciales = (parcial.promedio * porcentajeParcial);
        var puntajeLaboratorio = (laboratorio * porcentajeLaboratorio);
        var puntajeTaller = (taller * porcentajeTaller);
        var puntajeTrabajoPractico =
            (trabajoPractico * porcentajeTrabajoPractico);

        var puntajePromedioPonderado = (puntajeParciales +
            puntajeLaboratorio +
            puntajeTaller +
            puntajeTrabajoPractico);

        var puntajePromedioPonderadoRedondeado =
            Util.redondeo(puntajePromedioPonderado);

        return puntajePromedioPonderadoRedondeado;
      } else {
        print("ERROR PP: LA SUMA DE LOS PORCENTAJES ES DISTINTO A 100");
        return -1;
      }
    }
  }
}
