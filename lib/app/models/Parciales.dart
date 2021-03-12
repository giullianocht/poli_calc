import 'package:poli_calc/app/Util/Util.dart';

class Parciales {
  int primerParcial;
  int segundoParcial;
  Parciales({required this.primerParcial, required this.segundoParcial})
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
