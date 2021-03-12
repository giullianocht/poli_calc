import 'package:flutter_test/flutter_test.dart';
import 'package:poli_calc/app/models/Parcial.dart';
import 'package:poli_calc/app/models/PromedioPonderado.dart';

main() {
  test("Promedio Ponderado = Promedio Parcial", () {
    var parcial = Parcial(primerParcial: 50, segundoParcial: 50);
    var laboratorio = 0;
    var taller = 0;
    var trabajoPractico = 0;

    var promedioPonderado = PromedioPonderado(
      laboratorio: laboratorio,
      taller: taller,
      trabajoPractico: trabajoPractico,
    );
    promedioPonderado.setParcial = parcial;

    promedioPonderado.setPorcentajeParcial = 100;
    promedioPonderado.setPorcentajeLaboratorio = 0;
    promedioPonderado.setPorcentajeTaller = 0;
    promedioPonderado.setPorcentajeTrabajoPractico = 0;

    expect(promedioPonderado.calcular(), 50);
  });
  test("Promedio Ponderado = Promedio Parcial (49+50)", () {
    var parcial = Parcial(primerParcial: 49, segundoParcial: 50);
    var laboratorio = 0;
    var taller = 0;
    var trabajoPractico = 0;

    var promedioPonderado = PromedioPonderado(
      laboratorio: laboratorio,
      taller: taller,
      trabajoPractico: trabajoPractico,
    );
    promedioPonderado.setParcial = parcial;

    promedioPonderado.setPorcentajeParcial = 100;
    promedioPonderado.setPorcentajeLaboratorio = 0;
    promedioPonderado.setPorcentajeTaller = 0;
    promedioPonderado.setPorcentajeTrabajoPractico = 0;

    expect(promedioPonderado.calcular(), 50);
  });
  test("Promedio Ponderado: PP + LAB", () {
    var parcial = Parcial(primerParcial: 49, segundoParcial: 50);
    var laboratorio = 70;
    var taller = 0;
    var trabajoPractico = 0;

    var promedioPonderado = PromedioPonderado(
      laboratorio: laboratorio,
      taller: taller,
      trabajoPractico: trabajoPractico,
    );
    promedioPonderado.setParcial = parcial;

    promedioPonderado.setPorcentajeParcial = 90;
    promedioPonderado.setPorcentajeLaboratorio = 10;
    promedioPonderado.setPorcentajeTaller = 0;
    promedioPonderado.setPorcentajeTrabajoPractico = 0;

    expect(promedioPonderado.calcular(), 52);
  });
  test("Promedio Ponderado: PP + LAB + TALLER", () {
    var parcial = Parcial(primerParcial: 49, segundoParcial: 50);
    var laboratorio = 70;
    var taller = 85;
    var trabajoPractico = 0;

    var promedioPonderado = PromedioPonderado(
      laboratorio: laboratorio,
      taller: taller,
      trabajoPractico: trabajoPractico,
    );
    promedioPonderado.setParcial = parcial;

    promedioPonderado.setPorcentajeParcial = 75;
    promedioPonderado.setPorcentajeLaboratorio = 10;
    promedioPonderado.setPorcentajeTaller = 15;
    promedioPonderado.setPorcentajeTrabajoPractico = 0;

    expect(promedioPonderado.calcular(), 57);
  });
  test("Promedio Ponderado: PP + LAB + TALLER + TP 1", () {
    var parcial = Parcial(primerParcial: 49, segundoParcial: 50);
    var laboratorio = 70;
    var taller = 85;
    var trabajoPractico = 90;

    var promedioPonderado = PromedioPonderado(
      laboratorio: laboratorio,
      taller: taller,
      trabajoPractico: trabajoPractico,
    );
    promedioPonderado.setParcial = parcial;

    promedioPonderado.setPorcentajeParcial = 70;
    promedioPonderado.setPorcentajeLaboratorio = 10;
    promedioPonderado.setPorcentajeTaller = 10;
    promedioPonderado.setPorcentajeTrabajoPractico = 10;

    expect(promedioPonderado.calcular(), 60);
  });
  test("Promedio Ponderado: PP + LAB + TALLER + TP 2", () {
    var parcial = Parcial(primerParcial: 85, segundoParcial: 70);
    var laboratorio = 70;
    var taller = 85;
    var trabajoPractico = 90;

    var promedioPonderado = PromedioPonderado(
      laboratorio: laboratorio,
      taller: taller,
      trabajoPractico: trabajoPractico,
    );
    promedioPonderado.setParcial = parcial;

    promedioPonderado.setPorcentajeParcial = 50;
    promedioPonderado.setPorcentajeLaboratorio = 20;
    promedioPonderado.setPorcentajeTaller = 15;
    promedioPonderado.setPorcentajeTrabajoPractico = 15;

    expect(promedioPonderado.calcular(), 79);
  });
  test("Promedio Ponderado ERROR: Suma de los porcentajes incorrecto", () {
    var parcial = Parcial(primerParcial: 85, segundoParcial: 70);
    var laboratorio = 70;
    var taller = 85;
    var trabajoPractico = 90;

    var promedioPonderado = PromedioPonderado(
      laboratorio: laboratorio,
      taller: taller,
      trabajoPractico: trabajoPractico,
    );
    promedioPonderado.setParcial = parcial;

    promedioPonderado.setPorcentajeParcial = 80;
    promedioPonderado.setPorcentajeLaboratorio = 20;
    promedioPonderado.setPorcentajeTaller = 15;
    promedioPonderado.setPorcentajeTrabajoPractico = 15;

    expect(promedioPonderado.calcular(), -1);
  });
}
