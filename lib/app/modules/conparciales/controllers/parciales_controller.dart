import 'package:get/get.dart';
import 'package:poli_calc/app/models/ExamenFinal.dart';
import 'package:poli_calc/app/models/Parcial.dart';
import 'package:poli_calc/app/models/PromedioPonderado.dart';

class ConParcialesController extends GetxController {
  //El promedio de parcial es igual al promedio ponderado
  //por eso no tenemos puntaje en lab, taller, trabajo practico
  //y tampoco un porcentaje para ellos ya que el porcentaje del
  //calculo del parcial es 100
  var parcial = Parcial(primerParcial: 50, segundoParcial: 50);

  var promedioPonderado =
      PromedioPonderado(laboratorio: 0, taller: 0, trabajoPractico: 0);

  var examenFinal = ExamenFinal().obs;

  @override
  void onInit() {
    promedioPonderado.setParcial = parcial;

    promedioPonderado.setPorcentajeParcial = 100;
    promedioPonderado.setPorcentajeLaboratorio = 0;
    promedioPonderado.setPorcentajeTaller = 0;
    promedioPonderado.setPorcentajeTrabajoPractico = 0;

    examenFinal.value!.setPromedioPonderado = promedioPonderado;
    examenFinal.value!.setPuntajeExamenFinal = 0;

    examenFinal.value!.setPorcentajePromedioPonderado = 60;
    examenFinal.value!.setPorcetajePuntajeExamenFinal = 40;

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

  void setPrimerParcial(int valor) {
    examenFinal.value!.promedioPonderado.parcial.primerParcial = valor;
    examenFinal.refresh();
  }

  void setSegundoParcial(int valor) {
    examenFinal.value!.promedioPonderado.parcial.segundoParcial = valor;
    examenFinal.refresh();
  }

  int get primerParcial {
    return examenFinal.value!.promedioPonderado.parcial.primerParcial;
  }

  int get segundoParcial {
    return examenFinal.value!.promedioPonderado.parcial.segundoParcial;
  }

  int _auxCalcularNota(int notaFinal, int iniPuntaje) {
    for (var puntaje = iniPuntaje; puntaje <= 100; puntaje++) {
      examenFinal.value!.setPuntajeExamenFinal = puntaje;
      if (examenFinal.value!.nota() == notaFinal) {
        return puntaje;
      }
    }
    //Error
    return -1;
  }

  List<int> calcularNotas() {
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
