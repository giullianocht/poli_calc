import 'package:flutter_test/flutter_test.dart';
import 'package:poli_calc/app/models/Parciales.dart';

main() {
  test("Parciales: Nulos", () {
    //Si los parciales son nulos por ende el promedio
    //tambien debe ser nulo
    var parciales = Parciales(primerParcial: 0, segundoParcial: 0);
    expect(parciales.promedio, 0);
  });
  test("Parciales: 50 Promedio", () {
    var parciales = Parciales(primerParcial: 50, segundoParcial: 50);
    expect(parciales.promedio, 50);
  });
  test("Parciales: 50 Promedio con un parcial nulo", () {
    var parciales = Parciales(primerParcial: 0, segundoParcial: 100);
    expect(parciales.promedio, 50);
  });
  test("Parciales: Promedio 49,5 => 50 ", () {
    var parciales = Parciales(primerParcial: 50, segundoParcial: 49);
    expect(parciales.promedio, 50);
  });
  test("Parciales: Promedio 67,5 -> 68 ", () {
    var parciales = Parciales(primerParcial: 63, segundoParcial: 72);
    expect(parciales.promedio, 68);
  });
  test("Parciales: Promedio 71 ", () {
    var parciales = Parciales(primerParcial: 100, segundoParcial: 42);
    expect(parciales.promedio, 71);
  });

  test("Parciales: Promedio 100 ", () {
    var parciales = Parciales(primerParcial: 100, segundoParcial: 100);
    expect(parciales.promedio, 100);
  });
}
