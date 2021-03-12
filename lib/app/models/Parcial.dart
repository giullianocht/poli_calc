import 'package:poli_calc/app/util/Util.dart';

class Parcial {
  int primerParcial;
  int segundoParcial;
  Parcial({required this.primerParcial, required this.segundoParcial})
      : assert(
          primerParcial >= 0 &&
              primerParcial <= 100 &&
              segundoParcial >= 0 &&
              segundoParcial <= 100,
        );

  int get promedio {
    return Util.redondeo((primerParcial + segundoParcial) / 2);
  }
}
