import 'package:flutter_test/flutter_test.dart';
import 'package:poli_calc/app/models/Parcial.dart';

main() {
  test("Parcial: Nulos", () {
    //Si los parciales son nulos por ende el promedio
    //tambien debe ser nulo
    var parciales = Parcial(primerParcial: 0, segundoParcial: 0);
    expect(parciales.promedio, 0);
  });
  test("Parcial: 50 Promedio", () {
    var parciales = Parcial(primerParcial: 50, segundoParcial: 50);
    expect(parciales.promedio, 50);
  });
  test("Parcial: 50 Promedio con un parcial nulo", () {
    var parciales = Parcial(primerParcial: 0, segundoParcial: 100);
    expect(parciales.promedio, 50);
  });
  test("Parcial: Promedio 49,5 => 50 ", () {
    var parciales = Parcial(primerParcial: 50, segundoParcial: 49);
    expect(parciales.promedio, 50);
  });
  test("Parcial: Promedio 67,5 -> 68 ", () {
    var parciales = Parcial(primerParcial: 63, segundoParcial: 72);
    expect(parciales.promedio, 68);
  });
  test("Parcial: Promedio 71 ", () {
    var parciales = Parcial(primerParcial: 100, segundoParcial: 42);
    expect(parciales.promedio, 71);
  });

  test("Parcial: Promedio 100 ", () {
    var parciales = Parcial(primerParcial: 100, segundoParcial: 100);
    expect(parciales.promedio, 100);
  });
}
