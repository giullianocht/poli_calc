import 'package:get/get.dart';
import 'package:poli_calc/app/models/ExamenFinal.dart';
import 'package:poli_calc/app/models/Parcial.dart';
import 'package:poli_calc/app/models/PromedioPonderado.dart';

class ArmarController extends GetxController {
  var parcial = Parcial(primerParcial: 50, segundoParcial: 50);
  var promedioPonderado =
      PromedioPonderado(laboratorio: 0, taller: 0, trabajoPractico: 0);
  var examenFinal = ExamenFinal().obs;

  @override
  void onInit() {
    promedioPonderado.setParcial = parcial;

    promedioPonderado.setPorcentajeParcial = 0;
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

  void setParcialPorcentaje(int valor) {
    examenFinal.value!.promedioPonderado.setPorcentajeParcial = valor;
    examenFinal.refresh();
  }

  void setLaboratorio(int valor) {
    examenFinal.value!.promedioPonderado.laboratorio = valor;
    examenFinal.refresh();
  }

  void setLaboratorioPorcentaje(int valor) {
    examenFinal.value!.promedioPonderado.setPorcentajeLaboratorio = valor;
    examenFinal.refresh();
  }

  void setTaller(int valor) {
    examenFinal.value!.promedioPonderado.taller = valor;
    examenFinal.refresh();
  }

  void setPorcentajeTaller(int valor) {
    examenFinal.value!.promedioPonderado.setPorcentajeTaller = valor;
    examenFinal.refresh();
  }

  void setTrabajoPractico(int valor) {
    examenFinal.value!.promedioPonderado.trabajoPractico = valor;
    examenFinal.refresh();
  }

  void setPorcentajeTrabajoPractico(int valor) {
    examenFinal.value!.promedioPonderado.setPorcentajeTrabajoPractico = valor;
    examenFinal.refresh();
  }

  int get primerParcial {
    return examenFinal.value!.promedioPonderado.parcial.primerParcial;
  }

  int get segundoParcial {
    return examenFinal.value!.promedioPonderado.parcial.segundoParcial;
  }

  int get porcentajeParcial {
    return (examenFinal.value!.promedioPonderado.porcentajeParcial * 100)
        .toInt();
  }

  int get laboratorio {
    return examenFinal.value!.promedioPonderado.laboratorio;
  }

  int get porcentajeLaboratorio {
    return (examenFinal.value!.promedioPonderado.porcentajeLaboratorio * 100)
        .toInt();
  }

  int get taller {
    return examenFinal.value!.promedioPonderado.taller;
  }

  int get porcentajeTaller {
    return (examenFinal.value!.promedioPonderado.porcentajeTaller * 100)
        .toInt();
  }

  int get trabajoPractico {
    return examenFinal.value!.promedioPonderado.trabajoPractico;
  }

  int get porcentajeTrabajoPractico {
    return (examenFinal.value!.promedioPonderado.porcentajeTrabajoPractico *
            100)
        .toInt();
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

  int error() {
    return examenFinal.value!.nota();
  }

  void reset() {
    setPrimerParcial(50);
    setSegundoParcial(50);
    setParcialPorcentaje(0);

    setLaboratorio(0);
    setLaboratorioPorcentaje(0);

    setTaller(0);
    setPorcentajeTaller(0);

    setTrabajoPractico(0);
    setPorcentajeTrabajoPractico(0);
  }
}
