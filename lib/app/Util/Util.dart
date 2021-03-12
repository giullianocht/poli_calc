class Util {
  static int redondeo(double valor) {
    var fraccion = ((valor * 10) % 10).toInt();
    if (fraccion >= 5) {
      return valor.round();
    } else {
      return valor.floor();
    }
  }
}
